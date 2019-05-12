library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity slicefiltercontrollercnn is

		generic(maxoutputimage : integer := 5);
			-- maxoutputimage -> maximum bits to represent the size of output image 
	port(
			start, -- signal to start applying 1 filter to 1 image
			layertype, -- signal to know weather this process is convolution => 0  or pooling => 1
			filterlastlayer, -- signal to know weather it is the last layer or not to save final result in ram -- in pooling -> always 1 or don't care
			finishconv, -- signal to know then convolution finish
			-- dmafinish, -- signal is sent when dma finishes desired operation
			dmaafinish,
			dmabfinish,
			dmacfinish,
			resetstate, -- signal to reset state to idle state
			clk : in std_logic; -- system clock

			outputsize : in std_logic_vector(maxoutputimage-1 downto 0); -- output image size example : 26 --> output image size 26x26

			-- loadbias, -- signal is sent to dma to load bias from ram and save into filter buffer
			pageturn: out std_logic_vector(0 downto 0);
			slicefirstload, -- signal to indicate that we are in the first state in fsm which is filterloadwindow state
			loadfilter, -- signal is sent to dma to load filter from ram
			loadwindow, -- signal is sent to dma to load window from ram
			conv,  -- signal is sent to multipliers to start convolution
			pool, -- signal is sent to start pooling by getting values from registers and directly add them to output buffer
			shift12,  -- signal is sent to shift from page 1 to page 2
			shift21,  -- signal is sent to shift from page 2 to page 1
			readnextcol,   -- signal is sent to dma to load next column from ram
			addtooutputbuffer, -- signal is sent to adder to add the content of output buffer to result of convolution
			outputbufferen, -- signal is sent to enable output buffer to read value
			savetoram, -- signal is sent to ram b to read from output buffer
			finish: out std_logic -- signal is sent to upper fsm to tell that convolution with this filter is finished
		);

end entity slicefiltercontrollercnn;

------------------------------------------------------------

architecture slicefiltercontrollercnnarch of slicefiltercontrollercnn is
	
	-- enum for state machine states
		type fsmstatemachine is (	idlestate,			
									loadfilterwindowstate,
									shiftstate,
									convreadcolstate,
									addstate,
									savestate,
									endstate
								); -- machine states

		signal currentstate,nextstate : fsmstatemachine; -- current state and the changed naxt state

		signal stateregen : std_logic; -- state register enable and counters enables

	----------------------------------

		signal pageregreset,pageregen,finalpageregen : std_logic; -- current filling page 1 or 2 -- next page to be filled -- signal to know weather it is valid to change page or not ( not in case of load window )
		-- ,changepage
		signal currentpage, nextpage : std_logic_vector(0 downto 0);

	-- counters signals
		signal innercounteren,outercounteren : std_logic; -- enables, final is anded with enable

		signal innercounterout,outercounterout,altinnercounterout,altoutercounterout : std_logic_vector(4 downto 0); -- output from counters

		signal resetinnercounter,resetoutercounter : std_logic; -- counter reset

		signal savingtoram: std_logic;

	-- latch finishes

		signal resetfinishes : std_logic;

		signal finaldmabfinish,finaldmacfinish: std_logic; --finaldmaafinish,

		signal finaldmaen: std_logic;

	------------------------------------------------------------


	begin	
	
	innercounterout <= altinnercounterout when rising_edge(clk);

	outercounterout <= altoutercounterout when rising_edge(clk);

	pageturn <= currentpage;

	nextpage <= not currentpage;

	savetoram <= savingtoram;

		process(currentstate,start, finaldmabfinish, finaldmacfinish,dmaafinish,dmabfinish,dmacfinish ,finishconv,layertype,currentpage,filterlastlayer,outputsize,innercounterout,outercounterout,savingtoram)--,outercounterout,innercounterout)--,page,counterout,outputsize),nextpage , finaldmaafinish,

			begin
			case currentstate is

				when idlestate =>
					-- intialize all signals to 0
						loadfilter <= '0';
						slicefirstload <= '0';
						-- loadbias <= '0';
						conv <= '0';
						pool <= '0';
						shift12 <= '0';
						shift21 <= '0';
						-- currentpage <= '0';
						-- nextpage <= '1';
						pageregen <= '1';
						-- changepage <= '1';
						pageregreset <= '1';
						readnextcol <= '0';
						addtooutputbuffer <= '0';
						outputbufferen <= '0';
						-- savetoram <= '0';
						savingtoram <= '0';
						finish <= '0';

					-- reset counters to 0
						innercounteren <= '1';
						outercounteren <= '1';
						resetinnercounter <= '1';
						resetoutercounter <= '1';

					-- reset finishes
						resetfinishes <= '1';
						finaldmaen <= '1';
						
			
					-- set next state
							nextstate <= loadfilterwindowstate; 
			
					-- when start signal comes go to specified next state
						stateregen <= start;
						-- loadbias <= start and ( not layertype );

						loadwindow <= start;

						loadfilter <= start and (not layertype); -- 0 => conv  1 => pool

			--------------------------------------------------------------------------------------------------------
			-- when loadbiasstate =>
			-- 		-- release reset signals for counters
			-- 			innercounteren <= '0';
			-- 			outercounteren <= '0';
			-- 			resetinnercounter <= '0';
			-- 			resetoutercounter <= '0';
						
			-- 			loadwindow <= '0';
			-- 			loadfilter <= '0';
			-- 			readnextcol <= '0';
			-- 			conv <= '0';
			-- 			pool <= '0';
			-- 			shift12 <= '0';
			-- 			shift21 <= '0';
			-- 			-- currentpage <= '0';
			-- 			-- nextpage <= '1';
			-- 			pageregen <= '0';
			-- 			pageregreset <= '0';
			-- 			addtooutputbuffer <= '0';
			-- 			outputbufferen <= '0';
						-- savetoram <= '0';
			-- 			finish <= '0';

			-- 		loadbias <= '1';
			
			-- 		-- set next state
			-- 			nextstate <= loadfilterwindowstate; 

			-- 		-- when finish dma signal comes go to specified next state
			-- 			stateregen <= dmaafinish;
			-- --------------------------------------------------------------------------------------------------------
			when loadfilterwindowstate =>

						-- release raised signals by past state
							-- loadbias <= '0';
							slicefirstload <= '1';
							conv <= '0';
							pool <= '0';
							shift12 <= '0';
							shift21 <= '0';
							-- currentpage <= '0';
							-- nextpage <= '1';
							pageregen <= '0';
							-- changepage <= '1';
							pageregreset <= '0';
							readnextcol <= '0';
							addtooutputbuffer <= '0';
							outputbufferen <= '0';
							-- savetoram <= '0';
							savingtoram <= '0';
							finish <= '0';

							innercounteren <= '0';
							outercounteren <= '0';
							resetinnercounter <= '0';
							resetoutercounter <= '0';
	

						-- tell dma a to load filter from ram
							loadfilter <= not layertype; -- 0 => conv  1 => pool

						-- tell dma b to start loading window from ram
							loadwindow <= '1';

						-- turn off reset all finishes to track finish dma a and b
							-- resetfinishes <= '0';
						


						-- set next state
							nextstate <= shiftstate;

						-- when dma finishes go to specified next state	
							

							stateregen <= (dmaafinish or layertype ) and dmabfinish;

							resetfinishes <= '0';
							finaldmaen <= '0';

			--------------------------------------------------------------------------------------------------------
				when shiftstate =>
						-- release signal raised by past state
							loadfilter <= '0';
							loadwindow <= '0';
							slicefirstload <= '0';
							-- loadbias <= '0';
							readnextcol <= '0';
							addtooutputbuffer <= '0';
							finish <= '0';

						-- release output buffer enable signal
							outputbufferen <= '0';
							
						-- release counters enables and reset for inner counter
							outercounteren <= '0'; 
							innercounteren <= '0';
							resetinnercounter <= '0';
							resetoutercounter <= '0';

						-- convolution start or pooling
							conv <= not layertype; -- 0 conv 1 pooling
							pool <= layertype;

						-- shift		
							-- decide which shift would happen based on current working page
								if currentpage = "0" then
									shift12 <= '1';
									shift21 <= '0';
								else
									shift12 <= '0';
									shift21 <= '1';
								end if;
								
								pageregen <= '0';
								-- changepage <= '0';
								pageregreset <= '0';
								-- currentpage <= currentpage;
								-- nextpage <= not currentpage;
							-- savingtoram <= '0';

						-- save last output to ram
						-- mai not sure it is right or not but i don't know what current page has to do with this condition
							-- if (filterlastlayer = '1' or layertype = '1') and ( (innercounterout /= "00000" or outercounterout /= "00000") or currentpage = "1") then
							if (filterlastlayer = '1' or layertype = '1') and ( not (innercounterout  = "00000" ) or  not(outercounterout = "00000")) then
								-- savetoram <= '1';
								savingtoram <= '1';
							else
								-- savetoram <= '0';
								savingtoram <= '0';
							end if;

						-- set next state
							nextstate <= convreadcolstate;

						-- stateregen <= (dmabfinish or (not savingtoram)) ;
						stateregen <= '1';

						resetfinishes <= '0' ;
						finaldmaen <= '0';
			--------------------------------------------------------------------------------------------------------
				when convreadcolstate =>

						-- release signal raised by past state
							-- savetoram <= '0';
							-- savingtoram <= '0';
							
							shift12 <= '0';
							shift21 <= '0';
							slicefirstload <= '0';
							-- update working page
								-- currentpage <= nextpage;
								-- nextpage <= nextpage;
								pageregen <= '0';
								pageregreset <= '0';
							loadfilter <= '0';
							-- loadbias <= '0';
							addtooutputbuffer <= '0';
							outputbufferen <= '0';
							finish <= '0';
						
							-- release counters enables and reset for inner counter
								outercounteren <= '0'; 
								innercounteren <= '0';
								resetinnercounter <= '0';
								resetoutercounter <= '0';
					

						-- convolution start or pooling
							conv <= not layertype; -- 0 conv 1 pooling
							pool <= layertype;

				
						-- read column/window
							-- check to know weather to load window or column or nothing
								if innercounterout = outputsize and outercounterout /= outputsize then
									-- load window only
									loadwindow <= not finaldmabfinish; 
									readnextcol <= '0';
									-- changepage <= '0';
								else if outercounterout = outputsize and innercounterout = outputsize then
										-- the last time , no window or column loading
										loadwindow <= '0'; 
										readnextcol <= '0';
										-- changepage <= '1';
									else
										-- load column only
										loadwindow <= '0';
										readnextcol <= not finaldmabfinish;
										-- changepage <= '0';
									end if;
								end if;

						
							if (filterlastlayer = '1' or layertype = '1') and ( not (innercounterout  = "00000" ) or  not(outercounterout = "00000")) then
								-- savetoram <= '1';
								savingtoram <= (not finaldmacfinish); --and (not clk);
							else
								-- savetoram <= '0';
								savingtoram <= '0';
							end if;

						-- set next state
							if layertype = '0' then
								nextstate <= addstate;
							else
								nextstate <= savestate;
							end if;

							resetfinishes <= '0';
							finaldmaen <= '1';

						-- when dma finishes go to specified next state	
							if ( ( finaldmabfinish ='1' or  (outercounterout = outputsize and innercounterout = outputsize)) and  finishconv = '1' and ( ( finaldmacfinish='1' or savingtoram = '0') or filterlastlayer='0') ) then
								stateregen <= '1';
								-- resetfinishes <= '1';
							else
								stateregen <= '0';
								-- resetfinishes <= '0';
							end if;

			--------------------------------------------------------------------------------------------------------
				when addstate =>
						-- release signals that were raised by past state
							conv <= '0';
							pool <= '0';
							shift12 <= '0';
							shift21 <= '0';
							loadfilter <= '0';
							readnextcol <= '0';
							loadwindow <= '0';
							slicefirstload <= '0';
							-- loadbias <= '0';
							-- savetoram <= '0';
							savingtoram <= '0';
							finish <= '0';

						-- release counters enables and reset for inner counter
							outercounteren <= '0'; 
							innercounteren <= '0';
							resetinnercounter <= '0';
							resetoutercounter <= '0';

						resetfinishes <= '1';
						finaldmaen <= '1';

						addtooutputbuffer <= '1';
						outputbufferen <= '0';

						-- update working page
							-- currentpage <= nextpage;
							-- nextpage <= nextpage;
							pageregen <= '0';
							pageregreset <= '0';
						
						-- set next state
							nextstate <= savestate;

							stateregen <= '1';
			--------------------------------------------------------------------------------------------------------
				when savestate =>

						-- release signals that were raised by past state
							addtooutputbuffer <= '0';		
							loadfilter <= '0';
							loadwindow <= '0';
							-- loadbias <= '0';
							readnextcol <= '0';
							slicefirstload <= '0';

							conv <= '0';
							pool <= '0';
							shift12 <= '0';
							shift21 <= '0';
							-- update working page
								-- currentpage <= nextpage;
								-- nextpage <= nextpage;
								pageregen <= '1';
								pageregreset <= '0';
							-- savetoram <= '0';
							savingtoram <= '0';
							finish <= '0';

							resetfinishes <= '1';
							finaldmaen <= '0';

							resetoutercounter <= '0';

						-- enable output buffer to save final result of this operation added to its last content
							outputbufferen <= '1';

						-- set inner counter to continue
							innercounteren <= '1';
						
						-- check if row/image ended
							if innercounterout = outputsize then
								-- if this row is finished reset inner counter and count 1 at outer counter
									outercounteren <= '1'; 
									resetinnercounter <= '1';
							else
								-- if row is not finished or begging of new one set signals back to 0
									resetinnercounter <= '0';
									outercounteren <= '0';
							end if;
					
					-- set next state
						if outercounterout = outputsize and innercounterout = outputsize then
							nextstate <= endstate; -- if image is finished
						else
							nextstate <= shiftstate; -- if image is finished go to convolution state again
						end if;

					stateregen <= '1';
			--------------------------------------------------------------------------------------------------------
			-- the last state after completeing convolution image with filter
				when endstate =>
	
					loadfilter <= '0';
					loadwindow <= '0';
					-- loadbias <= '0';
					slicefirstload <= '0';
					addtooutputbuffer <= '0';
					outputbufferen <= '0';
					readnextcol <= '0';
					conv <= '0';
					pool <= '0';
					shift12 <= '0';
					shift21 <= '0';
					-- currentpage <= '0';
					-- nextpage <= '1';
					pageregen <= '0';
					pageregreset <= '0';

					-- release counters enables and reset for inner counter
						outercounteren <= '0'; 
						innercounteren <= '0';
						resetinnercounter <= '0';
						resetoutercounter <= '0';
				

					savingtoram <= filterlastlayer or layertype;
					-- savetoram <= savingtoram;

					resetfinishes <= '0';
					finaldmaen <= '0';

					-- raise finish signal
						finish <= dmacfinish or not (filterlastlayer or layertype);
					-- set next state
						nextstate <= idlestate; -- get back to 0 state (idle state)

						stateregen <= dmacfinish or not (filterlastlayer );


			end case;
	end process;




	-- -- counter to stop when finish image
	-- 	innercountermap : entity work.countercnn generic map (5) port map ( "00000",resetinnercounter, finalinnercounteren , '0',innercounterout);

	-- -- counter to stop when finish image
	-- 	outercountermap : entity work.countercnn generic map (5) port map ( "00000",resetoutercounter, finaloutercounteren , '0',outercounterout);

	-- counter to stop when finish image
		innercountermap : entity work.countercnn generic map (maxoutputimage) port map ( innercounteren,resetinnercounter,clk,altinnercounterout);

	-- counter to stop when finish image
		outercountermap : entity work.countercnn generic map (maxoutputimage) port map ( outercounteren,resetoutercounter,clk,altoutercounterout);
		
		finalpageregen <= pageregen;-- and changepage;
		pageregmap : entity work.regcnn generic map(1) port map (nextpage,finalpageregen,clk,pageregreset,currentpage);


		-- dmaafinishreg : entity work.regcnn generic map(1) port map ("1",dmaafinish,clk,resetfinishes,finaldmaafinish);

	-- process to save state and change to next state when enable = 1

		-- process(clk, resetfinishes) -- dmaafinish,
		-- 	begin
		-- 		if resetfinishes ='1' then -- if reset is equal to 1 set current state to idle state (0)
		-- 			finaldmaafinish <= '0';
		-- 		elsif rising_edge(clk)  then -- change value only when enable = 1 and rising edge
		-- 			if dmaafinish='1'and finaldmaen = '1' then
		-- 				finaldmaafinish <= '1';
		-- 			end if;
		-- 		end if;

		-- end process;

		-- dmabfinishreg : entity work.regcnn generic map(1) port map ("1",dmabfinish,clk,resetfinishes,finaldmabfinish);

	-- process to save state and change to next state when enable = 1
		process(clk, resetfinishes)--dmabfinish
			begin
				if resetfinishes ='1' then -- if reset is equal to 1 set current state to idle state (0)
					finaldmabfinish <= '0';
				elsif rising_edge(clk)  then -- change value only when enable = 1 and rising edge
					if dmabfinish='1' and finaldmaen = '1' then
						finaldmabfinish <= '1';
					end if;
				end if;

		end process;
		
		-- dmacfinishreg : entity work.regcnn generic map(1) port map ("1",dmacfinish,clk,resetfinishes,finaldmacinish);

	-- process to save state and change to next state when enable = 1
		process(clk, resetfinishes) --dmacfinish
			begin
				if resetfinishes ='1' then -- if reset is equal to 1 set current state to idle state (0)
					finaldmacfinish <= '0';
				elsif rising_edge(clk)  then -- change value only when enable = 1 and rising edge
					if dmacfinish='1' and finaldmaen = '1' then
						finaldmacfinish <= '1';
					end if;
				end if;

		end process;
		
	-- process to save state and change to next state when enable = 1
		process(clk,  resetstate)--nextstate,stateregen,
			begin
				if resetstate ='1' then -- if reset is equal to 1 set current state to idle state (0)
					currentstate <= idlestate;
				elsif falling_edge(clk)  then -- change value only when enable = 1 and rising edge
					if stateregen='1' then
						currentstate <= nextstate;
					end if;
				end if;

		end process;

		
end architecture;