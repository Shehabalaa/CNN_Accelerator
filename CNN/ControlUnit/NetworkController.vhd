LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

ENTITY NetworkController IS
        GENERIC(maxLayer : INTEGER := 2); -- Maximum bits to represent number of layers
	PORT(
            start, -- Signal to Start applying 1 filter to 1 image
            dmaFinish, -- Signal from DMA when it finishes loading Layer configration
            oneLayerFinish, -- Signal when all convolution of this filter finish
            resetState, -- Signal to reset State to idle state
			clk : IN STD_LOGIC; -- System clock

            layersNumber : IN STD_LOGIC_VECTOR(maxLayer-1 downto 0); -- Filter depth --> Number of Convolutions
            -- outputSize : IN STD_LOGIC_VECTOR(4 downto 0); -- Output Image size Example : 26 --> output image size 26x26

			loadConfig, -- Signal is sent to DMA to start loading configration of this layer
			startOneLayer, -- Signal sent to One Convolution Controller to start processing
			finish: OUT STD_LOGIC -- Signal is sent to upper FSM to tell that convolution with this filter is finished
		);

END ENTITY NetworkController;

------------------------------------------------------------

ARCHITECTURE NetworkControllerArch OF NetworkController IS
	
	-- Enum for State Machine States
		TYPE fsmStateMachine IS (	idleState,	
									configurationState,		
									layerExecuteState,
									endState
								); -- Machine States

		SIGNAL currentState,nextState : fsmStateMachine; -- Current State and the changed Naxt State

		SIGNAL stateRegEn : STD_LOGIC; -- State Register Enable and Counters Enables

    -- Counter Signals

        SIGNAL finalCounterEn,counterEn,resetCounter : STD_LOGIC;

        SIGNAL counterOut : STD_LOGIC_VECTOR (maxLayer-1 DOWNTO 0);
	------------------------------------------------------------

	BEGIN
		-- limit Counters to count only at rising edge
			finalCounterEn <= (clk AND counterEn);		

		PROCESS(start,currentState,oneLayerFinish,dmaFinish)

			BEGIN
			CASE currentState IS

				WHEN idleState =>
					-- Intialize all Signals to 0
						startOneLayer <= '0';
						loadConfig <='0';
                        finish <= '0';

					-- Reset Counters to 0
						counterEn <= '1';
						resetCounter <= '1';
			
					-- Set Next State
						nextState <= configurationState; 

					-- When Start signal comes Go to specified Next State
						stateRegEn <= start;


			------------------------------------------------------------
			WHEN configurationState =>
					-- Release Reset Signals for Counters
						counterEn <= '0';
						resetCounter <= '0';
					
                    loadConfig <= '1';
                    
                    -- Set Next State
                        nextState <= layerExecuteState; 
                        
                    -- When finish signal comes Go to specified Next State
						stateRegEn <= dmaFinish;

			------------------------------------------------------------
			WHEN layerExecuteState =>
						-- Release raised Signals by past state
							loadConfig <= '0';


                        -- Send start Signal to One Convolution FSM
                            startOneLayer <= '1';

                        -- Enable Counter to count when One Convolution Finishes
                            counterEn <= oneLayerFinish;

                        
                        -- Set Next State
							nextState <= endState;

						-- When One Convolution finishes Go to specified Next State	
                            IF counterOut = layersNumber AND oneLayerFinish = '1' THEN
                                stateRegEn <= '1';
                            ELSE
                                stateRegEn <= '0';
                            END IF;

			------------------------------------------------------------

			-- The last state after completeing applying full filter to image
				WHEN endState =>
                    
                    startOneLayer <= '0';
                    
                    -- Raise finish Signal
						finish <= '1';
					-- Set Next State
						nextState <= idleState; -- Get back to 0 state (idle state)

			END CASE;
	END PROCESS;



	-- Counter to stop when finish depth of filter
		counterMap : ENTITY work.Counter GENERIC MAP (maxLayer) PORT MAP (counterEn,resetCounter, clk ,counterOut);
	-- Process to save state and change to next state when enable = 1
		PROCESS(nextState,clk, stateRegEn, resetState)
			BEGIN
				IF resetState ='1' THEN -- if reset is equal to 1 set current state to idle state (0)
					currentState <= idleState;
				ELSIF FALLING_EDGE(clk)  THEN -- Change value only when enable = 1 and rising edge
					IF stateRegEn='1' THEN
						currentState <= nextState;
					END IF;
				END IF;

		END PROCESS;

		
END ARCHITECTURE;