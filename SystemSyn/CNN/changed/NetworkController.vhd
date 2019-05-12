library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity networkcontrollercnn is
        generic(maxlayer : integer := 2); -- maximum bits to represent number of layers
	port(
            start, -- signal to start applying 1 filter to 1 image
            dmafinish, -- signal from dma when it finishes loading layer configration
            onelayerfinish, -- signal when all convolution of this filter finish
            resetstate, -- signal to reset state to idle state
			clk : in std_logic; -- system clock

            layersnumber: in std_logic_vector(maxlayer-1 downto 0); -- filter depth --> number of convolutions
            -- outputsize : in std_logic_vector(4 downto 0); -- output image size example : 26 --> output image size 26x26

			loadconfig, -- signal is sent to dma to start loading configration of this layer
			startonelayer, -- signal sent to one convolution controller to start processing
			finish: out std_logic -- signal is sent to upper fsm to tell that convolution with this filter is finished
		);

end entity networkcontrollercnn;

------------------------------------------------------------

architecture networkcontrollercnnarch of networkcontrollercnn is
	
	-- enum for state machine states
		type fsmstatemachine is (	idlestate,	
									configurationstate,		
									layerexecutestate,
									endstate
								); -- machine states

		signal currentstate,nextstate : fsmstatemachine; -- current state and the changed naxt state

		signal stateregen : std_logic; -- state register enable and counters enables

    -- counter signals

        signal counteren,resetcounter : std_logic;

        signal counterout,altcounterout : std_logic_vector (maxlayer-1 downto 0);
	------------------------------------------------------------

	begin
		
		counterout <= altcounterout when rising_edge(clk);	

		process(start,currentstate,onelayerfinish,dmafinish,layersnumber,counterout)

			begin
			case currentstate is

				when idlestate =>
					-- intialize all signals to 0
						startonelayer <= '0';
						
                        finish <= '0';

					-- reset counters to 0
						counteren <= '1';
						resetcounter <= '1';
			
					-- set next state
						nextstate <= configurationstate; 

					-- when start signal comes go to specified next state
						loadconfig <= start;
						stateregen <= start;


			------------------------------------------------------------
			when configurationstate =>
					-- release reset signals for counters
						counteren <= '0';
						resetcounter <= '0';
						startonelayer <= '0';
						finish <= '0';
					
                    loadconfig <= '1';
                    
                    -- set next state
                        nextstate <= layerexecutestate; 
                        
                    -- when finish signal comes go to specified next state
						stateregen <= dmafinish;

			------------------------------------------------------------
			when layerexecutestate =>
						-- release raised signals by past state
							loadconfig <= '0';
							resetcounter <= '0';
							finish <= '0';


                        -- send start signal to one convolution fsm
                            startonelayer <= '1';

                        -- enable counter to count when one convolution finishes
                            counteren <= onelayerfinish;

                        
                        -- set next state
							nextstate <= endstate;

						-- when one convolution finishes go to specified next state	
                            if counterout = layersnumber and onelayerfinish = '1' then
                                stateregen <= '1';
                            else
                                stateregen <= '0';
                            end if;

			------------------------------------------------------------

			-- the last state after completeing applying full filter to image
				when endstate =>
                    
						startonelayer <= '0';
						loadconfig <='0';
						resetcounter <= '0';
						counteren <= '0';
                    
                    -- raise finish signal
						finish <= '1';

					-- set next state
						nextstate <= idlestate; -- get back to 0 state (idle state)

						stateregen <= '1';

			end case;
	end process;



	-- counter to stop when finish depth of filter
		countermap : entity work.countercnn generic map (maxlayer) port map (counteren,resetcounter, clk ,altcounterout);
	-- process to save state and change to next state when enable = 1
		process(clk, resetstate)--, stateregen,nextstate,
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