LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

ENTITY FilterController IS
		GENERIC(maxDepth : INTEGER := 3);
		-- maxDepth --> Maximum bits to represent depth of the layer 
	PORT(
			start, -- Signal to Start applying 1 filter to 1 image
			layerType, -- Signal to know layer type 0 -> conv , 1->pool 
			dmaFinish,  -- Signal is sent when DMA finishes desired Operation
            oneConvFinish, -- Signal when One convolution finishes it sends it
            resetState, -- Signal to reset State to idle state
			clk : IN STD_LOGIC; -- System clock

            depth : IN STD_LOGIC_VECTOR(maxDepth-1 downto 0); -- Filter depth --> Number of Convolutions
            -- outputSize : IN STD_LOGIC_VECTOR(maxOutputImage-1 downto 0); -- Output Image size Example : 26 --> output image size 26x26

			startOneConv, -- Signal sent to One Convolution Controller to start processing
			loadConfig, -- Signal sent to DMA to get this filter configurations (depth and so on..)
			filterLastLayer, -- Signal is send to Slice filter controller to know that it is the last layer of the filter to start saving results in RAM
			finish: OUT STD_LOGIC -- Signal is sent to upper FSM to tell that convolution with this filter is finished
		);

END ENTITY FilterController;

------------------------------------------------------------

ARCHITECTURE FilterControllerArch OF FilterController IS
	
	-- Enum for State Machine States
		TYPE fsmStateMachine IS (	idleState,	
									loadConfigState,		
									OneConvState,
									endState
								); -- Machine States

		SIGNAL currentState,nextState : fsmStateMachine; -- Current State and the changed Naxt State

		SIGNAL stateRegEn : STD_LOGIC; -- State Register Enable and Counters Enables

    -- Counter Signals

        SIGNAL counterEn,resetCounter : STD_LOGIC;

        SIGNAL counterOut,altCounterOut : STD_LOGIC_VECTOR (maxDepth-1 DOWNTO 0);
	------------------------------------------------------------

	BEGIN	

		counterOut <= altCounterOut when rising_edge(clk);	

		PROCESS(start,currentState,oneConvFinish,dmaFinish,depth,counterOut,layerType)

			BEGIN
			CASE currentState IS

				WHEN idleState =>
					-- Intialize all Signals to 0
						startOneConv <= '0';
						filterLastLayer <= '0';
						finish <= '0';

					-- Reset Counters to 0
						counterEn <= '1';
						resetCounter <= '1';
			
					-- Set Next State
						IF layerType = '0' THEN
							nextState <= loadConfigState;
						ELSE
							nextState <= OneConvState; 
						END IF;

					-- When Start signal comes Go to specified Next State
						stateRegEn <= start;

						loadConfig <= start AND ( NOT layerType );
			------------------------------------------------------------
			WHEN loadConfigState =>
					-- Release Reset Signals for Counters
						startOneConv <= '0';
						counterEn <= '0';
						resetCounter <= '0';
						filterLastLayer <= '0';
						finish <= '0';
						
					loadConfig <= '1';

					-- Set Next State
						nextState <= OneConvState; 

					-- When finish signal comes Go to specified Next State
						stateRegEn <= dmaFinish;


			------------------------------------------------------------
			WHEN OneConvState =>
						-- Release Reset Signals for Counters
							loadConfig <= '0';
							resetCounter <= '0';
							finish <= '0';

                        -- Send start Signal to One Convolution FSM
                            startOneConv <= '1';

                        -- Enable Counter to count when One Convolution Finishes
                            counterEn <= oneConvFinish;

                        
                        -- Set Next State
							nextState <= endState;

						IF counterOut = depth THEN
							filterLastLayer <= '1';
						ELSE
							filterLastLayer <= '0';
						END IF;

						-- When One Convolution finishes Go to specified Next State	
							IF counterOut = depth AND oneConvFinish = '1' THEN
								stateRegEn <= oneConvFinish;
								-- filterLastLayer <= '1';
							ELSE
								-- filterLastLayer <= '0';
								stateRegEn <= '0';
							END IF;

			------------------------------------------------------------

			-- The last state after completeing applying full filter to image
				WHEN endState =>

					startOneConv <= '0';
					loadConfig <= '0';
					filterLastLayer <= '0';
					counterEn <= '0';
					resetCounter <= '0';

					stateRegEn <= '1';

					-- Raise finish Signal
						finish <= '1';
						
					-- Set Next State
						nextState <= idleState; -- Get back to 0 state (idle state)

			END CASE;
	END PROCESS;



	-- Counter to stop when finish depth of filter
		counterMap : ENTITY work.Counter GENERIC MAP (maxDepth) PORT MAP (counterEn,resetCounter, clk ,altCounterOut);

	-- Process to save state and change to next state when enable = 1
		PROCESS(clk, resetState)--nextState,stateRegEn,
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