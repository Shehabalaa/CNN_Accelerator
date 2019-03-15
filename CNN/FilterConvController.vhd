LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

ENTITY FilterConvController IS

	PORT(
			start, -- Signal to Start applying 1 filter to 1 image
            oneConvFinish, -- Signal when One convolution finishes it sends it
            resetState, -- Signal to reset State to idle state
			clk : IN STD_LOGIC; -- System clock

            depth : IN STD_LOGIC_VECTOR(2 downto 0); -- Filter depth --> Number of Convolutions
            outputSize : IN STD_LOGIC_VECTOR(4 downto 0); -- Output Image size Example : 26 --> output image size 26x26

            startOneConv, -- Signal sent to One Convolution Controller to start processing
			finish: OUT STD_LOGIC -- Signal is sent to upper FSM to tell that convolution with this filter is finished
		);

END ENTITY FilterConvController;

------------------------------------------------------------

ARCHITECTURE FilterConvControllerArch OF FilterConvController IS
	
	-- Enum for State Machine States
		TYPE fsmStateMachine IS (	idleState,			
									OneConvState,
									endState
								); -- Machine States

		SIGNAL currentState,nextState : fsmStateMachine; -- Current State and the changed Naxt State

		SIGNAL stateRegEn : STD_LOGIC; -- State Register Enable and Counters Enables

    -- Counter Signals

        SIGNAL finalCounterEn,counterEn,resetCounter : STD_LOGIC;

        SIGNAL counterOut : STD_LOGIC_VECTOR (2 DOWNTO 0);
	------------------------------------------------------------

	BEGIN
		-- limit Counters to count only at rising edge
			finalCounterEn <= (clk AND counterEn);		

		PROCESS(currentState,oneConvFinish)

			BEGIN
			CASE currentState IS

				WHEN idleState =>
					-- Intialize all Signals to 0
                        startOneConv <= '0';

					-- Reset Counters to 0
						counterEn <= '1';
						resetCounter <= '1';
			
					-- Set Next State
						nextState <= OneConvState; 

					-- When Start signal comes Go to specified Next State
						stateRegEn <= '1';

			------------------------------------------------------------
			WHEN OneConvState =>
						-- Release Reset Signals for Counters
                            -- counterEn <= '0';
                            resetCounter <= '0';
                        
                        -- Send start Signal to One Convolution FSM
                            startOneConv <= '1';

                        -- Enable Counter to count when One Convolution Finishes
                            counterEn <= oneConvFinish;

                        
                        -- Set Next State
							nextState <= endState;

						-- When One Convolution finishes Go to specified Next State	
                            IF counterOut = depth AND oneConvFinish = '1' THEN
                                stateRegEn <= '1';
                            ELSE
                                stateRegEn <= '0';
                            END IF;

			------------------------------------------------------------

			-- The last state after completeing applying full filter to image
				WHEN endState =>

					-- Raise finish Signal
						finish <= '1';
					-- Set Next State
						nextState <= idleState; -- Get back to 0 state (idle state)

			END CASE;
	END PROCESS;



	-- Counter to stop when finish depth of filter
		counterMap : ENTITY work.Counter GENERIC MAP (3) PORT MAP ( "000",resetCounter, finalCounterEn , '0',counterOut);

	-- Process to save state and change to next state when enable = 1
		PROCESS(nextState,clk, stateRegEn, resetState)
			BEGIN
				IF resetState ='1' THEN -- if reset is equal to 1 set current state to idle state (0)
					currentState <= idleState;
				ELSIF FALLING_EDGE(clk) AND stateRegEn='1' THEN -- Change value only when enable = 1 and rising edge
					currentState <= nextState;
				END IF;

		END PROCESS;

		
END ARCHITECTURE;