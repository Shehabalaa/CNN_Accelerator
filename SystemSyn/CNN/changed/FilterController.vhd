library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity filtercontrollercnn is
		generic(maxdepth : integer := 3);
		-- maxdepth --> maximum bits to represent depth of the layer 
	port(
			start, -- signal to start applying 1 filter to 1 image
			layertype, -- signal to know layer type 0 -> conv , 1->pool 
			dmafinish,  -- signal is sent when dma finishes desired operation
 arch  arch  arch  arch  arch  arch oneconvfinish, -- signal when one convolution finishes it sends it
            resetstate, -- signal to reset state to idle state
			clk : in std_logic; -- system clock

            depth : in std_logic_vector(maxdepth-1 downto 0); -- filter depth --> number of convolutions
            -- outputsize : in std_logic_vector(maxoutputimage-1 downto 0); -- output image size example : 26 --> output image size 26x26

			startoneconv, -- signal sent to one convolution controller to start processing
			loadconfig, -- signal sent to dma to get this filter configurations (depth and so on..)
			filterlastlayer, -- signal is send to slice filter controller to know that it is the last layer of the filter to start saving results in ram
			finish: out std_logic -- signal is sent to upper fsm to tell that convolution with this filter is finished
		);

end entity filtercontrollercnn;

------------------------------------------------------------

architecture filtercontrollercnnarch of filtercontrollercnn is
	
	-- enum for state machine states
		type fsmstatemachine is (	idlestate,	
									loadconfigstate,		
									oneconvstate,
									endstate
								); -- machine states

		signal currentstate,nextstate : fsmstatemachine; -- current state and the changed naxt state

		signal stateregen : std_logic; -- state register enable and counters enables

    -- counter signals

        signal counteren,resetcounter : std_logic;

        signal counterout,altcounterout : std_logic_vector (maxdepth-1 downto 0);
	------------------------------------------------------------

	begin	

		counterout <= altcounterout when rising_edge(clk);	

		process(start,currentstate,oneconvfinish,dmafinish,depth,counterout,layertype)

			begin
			case currentstate is

				when idlestate =>
					-- intialize all signals to 0
						startoneconv <= '0';
						filterlastlayer <= '0';
						finish <= '0';

					-- reset counters to 0
						counteren <= '1';
						resetcounter <= '1';
			
					-- set next state
						if layertype = '0' then
							nextstate <= loadconfigstate;
						else
							nextstate <= oneconvstate; 
						end if;

					-- when start signal comes go to specified next state
						stateregen <= start;

						loadconfig <= start and ( not layertype );
			------------------------------------------------------------
			when loadconfigstate =>
					-- release reset signals for counters
						startoneconv <= '0';
						counteren <= '0';
						resetcounter <= '0';
						filterlastlayer <= '0';
						finish <= '0';
						
					loadconfig <= '1';

					-- set next state
						nextstate <= oneconvstate; 

					-- when finish signal comes go to specified next state
						stateregen <= dmafinish;


			------------------------------------------------------------
			when oneconvstate =>
						-- release reset signals for counters
							loadconfig <= '0';
							resetcounter <= '0';
							finish <= '0';

                        -- send start signal to one convolution fsm
                            startoneconv <= '1';

                        -- enable counter to count when one convolution finishes
                            counteren <= oneconvfinish;

                        
                        -- set next state
							nextstate <= endstate;

						if counterout = depth or layertype = '1' then
							filterlastlayer <= '1';
						else
							filterlastlayer <= '0';
						end if;

						-- when one convolution finishes go to specified next state	
							if counterout = depth and oneconvfinish = '1' then
								stateregen <= oneconvfinish;
								-- filterlastlayer <= '1';
							else
								-- filterlastlayer <= '0';
								stateregen <= '0';
							end if;

			------------------------------------------------------------

			-- the last state after completeing applying full filter to image
				when endstate =>

					startoneconv <= '0';
					loadconfig <= '0';
					filterlastlayer <= '0';
					counteren <= '0';
					resetcounter <= '0';

					stateregen <= '1';

					-- raise finish signal
						finish <= '1';
						
					-- set next state
						nextstate <= idlestate; -- get back to 0 state (idle state)

			end case;
	end process;



	-- counter to stop when finish depth of filter
		countermap : entity work.countercnn generic map (maxdepth) port map (counteren,resetcounter, clk ,altcounterout);

	-- process to save state and change to next state when enable = 1
		process(clk, resetstate)--nextstate,stateregen,
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