LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

ENTITY SliceFilterController IS

		GENERIC(maxOutputImage : INTEGER := 5);
			-- maxOutputImage -> Maximum bits to represent the size of output image 
	PORT(
			start, -- Signal to Start applying 1 filter to 1 image
			layerType, -- Signal to know weather this process is convolution => 0  or Pooling => 1
			filterLastLayer, -- Signal to know weather it is the last layer or not to save final result in ram -- in pooling -> always 1 or don't care
			finishConv, -- Signal to know then convolution finish
			-- dmaFinish, -- Signal is sent when DMA finishes desired Operation
			dmaAFinish,
			dmaBFinish,
			resetState, -- Signal to reset State to idle state
			clk : IN STD_LOGIC; -- System clock

			outputSize : IN STD_LOGIC_VECTOR(maxOutputImage-1 downto 0); -- Output Image size Example : 26 --> output image size 26x26

			-- loadBias, -- Signal is sent to DMA to load Bias from RAM and save into filter buffer
			loadFilter, -- Signal is sent to DMA to load Filter from RAM
			loadWindow, -- Signal is sent to DMA to load Window from RAM
			conv,  -- Signal is sent to Multipliers to start Convolution
			pool, -- Signal is sent to start pooling by getting values from registers and directly add them to output buffer
			shift12,  -- Signal is sent to shift from page 1 to page 2
			shift21,  -- Signal is sent to shift from page 2 to page 1
			readNextCol,   -- Signal is sent to DMA to load Next Column from RAM
			addToOutputBuffer, -- Signal is sent to Adder to add the content of output buffer to result of convolution
			outputBufferEn, -- Signal is sent to Enable output buffer to read value
			saveToRAM, -- Signal is sent to RAM B to read from output buffer
			finish: OUT STD_LOGIC -- Signal is sent to upper FSM to tell that convolution with this filter is finished
		);

END ENTITY SliceFilterController;

------------------------------------------------------------

ARCHITECTURE SliceFilterControllerArch OF SliceFilterController IS
	
	-- Enum for State Machine States
		TYPE fsmStateMachine IS (	idleState,			
									loadFilterWindowState,
									shiftState,
									convReadColState,
									addState,
									saveState,
									endState
								); -- Machine States

		SIGNAL currentState,nextState : fsmStateMachine; -- Current State and the changed Naxt State

		SIGNAL stateRegEn : STD_LOGIC; -- State Register Enable and Counters Enables

	----------------------------------

		SIGNAL pageRegReset,pageRegEn : STD_LOGIC; -- Current Filling Page 1 or 2 -- Next Page to be filled
		SIGNAL currentPage,nextPage : STD_LOGIC_VECTOR(0 DOWNTO 0);

	-- Counters Signals
		SIGNAL innerCounterEn,outerCounterEn : STD_LOGIC; -- Enables, final is anded with enable

		SIGNAL innerCounterOut,outerCounterOut,altInnerCounterOut,altOuterCounterOut : STD_LOGIC_VECTOR(4 DOWNTO 0); -- Output from Counters

		SIGNAL resetInnerCounter,resetOuterCounter : STD_LOGIC; -- Counter Reset

	------------------------------------------------------------


	BEGIN	
	
	innerCounterOut <= altInnerCounterOut when rising_edge(clk);

	outerCounterOut <= altOuterCounterOut when rising_edge(clk);

	nextPage <= NOT currentPage;

		PROCESS(currentState,start,dmaAFinish,dmaBFinish,finishConv,layerType,currentPage,filterLastLayer,outputSize,nextPage,innerCounterOut,outerCounterOut)--,outerCounterOut,innerCounterOut)--,page,counterOut,outputSize)

			BEGIN
			CASE currentState IS

				WHEN idleState =>
					-- Intialize all Signals to 0
						loadFilter <= '0';
						
						-- loadBias <= '0';
						conv <= '0';
						pool <= '0';
						shift12 <= '0';
						shift21 <= '0';
						-- currentPage <= '0';
						-- nextPage <= '1';
						pageRegEn <= '1';
						pageRegReset <= '1';
						readNextCol <= '0';
						addToOutputBuffer <= '0';
						outputBufferEn <= '0';
						saveToRam <= '0';
						finish <= '0';

					-- Reset Counters to 0
						innerCounterEn <= '1';
						outerCounterEn <= '1';
						resetInnerCounter <= '1';
						resetOuterCounter <= '1';
			
					-- Set Next State
							nextState <= loadFilterWindowState; 
			
					-- When Start signal comes Go to specified Next State
						stateRegEn <= start;
						-- loadBias <= start AND ( NOT layerType );

						loadWindow <= start;

						loadFilter <= start AND (NOT layerType); -- 0 => conv  1 => pool

			--------------------------------------------------------------------------------------------------------
			-- WHEN loadBiasState =>
			-- 		-- Release Reset Signals for Counters
			-- 			innerCounterEn <= '0';
			-- 			outerCounterEn <= '0';
			-- 			resetInnerCounter <= '0';
			-- 			resetOuterCounter <= '0';
						
			-- 			loadWindow <= '0';
			-- 			loadFilter <= '0';
			-- 			readNextCol <= '0';
			-- 			conv <= '0';
			-- 			pool <= '0';
			-- 			shift12 <= '0';
			-- 			shift21 <= '0';
			-- 			-- currentPage <= '0';
			-- 			-- nextPage <= '1';
			-- 			pageRegEn <= '0';
			-- 			pageRegReset <= '0';
			-- 			addToOutputBuffer <= '0';
			-- 			outputBufferEn <= '0';
			-- 			saveToRam <= '0';
			-- 			finish <= '0';

			-- 		loadBias <= '1';
			
			-- 		-- Set Next State
			-- 			nextState <= loadFilterWindowState; 

			-- 		-- When finish dma signal comes Go to specified Next State
			-- 			stateRegEn <= dmaAFinish;
			-- --------------------------------------------------------------------------------------------------------
			WHEN loadFilterWindowState =>

						-- Release Raised Signals by past state
							-- loadBias <= '0';
							conv <= '0';
							pool <= '0';
							shift12 <= '0';
							shift21 <= '0';
							-- currentPage <= '0';
							-- nextPage <= '1';
							pageRegEn <= '0';
							pageRegReset <= '0';
							readNextCol <= '0';
							addToOutputBuffer <= '0';
							outputBufferEn <= '0';
							saveToRam <= '0';
							finish <= '0';

							innerCounterEn <= '0';
							outerCounterEn <= '0';
							resetInnerCounter <= '0';
							resetOuterCounter <= '0';
	

						-- Tell DMA A to load Filter from RAM
							loadFilter <= NOT layerType; -- 0 => conv  1 => pool

						-- Tell DMA B to start loading window from RAM
							loadWindow <= '1';


						-- Set Next State
							nextState <= shiftState;

						-- When DMA finishes Go to specified Next State	
							stateRegEn <= (dmaAFinish OR layerType) AND dmaBFinish;

			--------------------------------------------------------------------------------------------------------
				WHEN shiftState =>
						-- Release Signal raised by past state
							loadFilter <= '0';
							loadWindow <= '0';
							-- loadBias <= '0';
							readNextCol <= '0';
							addToOutputBuffer <= '0';
							finish <= '0';

						-- Release Output buffer enable Signal
							outputBufferEn <= '0';
							
						-- Release Counters Enables and reset for inner counter
							outerCounterEn <= '0'; 
							innerCounterEn <= '0';
							resetInnerCounter <= '0';
							resetOuterCounter <= '0';

						-- Convolution Start or Pooling
							conv <= NOT layerType; -- 0 conv 1 pooling
							pool <= layerType;

						-- Shift		
							-- Decide which shift would happen based on current working page
								IF currentPage = "0" THEN
									shift12 <= '1';
									shift21 <= '0';
								ELSE
									shift12 <= '0';
									shift21 <= '1';
								END IF;
								
								pageRegEn <= '0';
								pageRegReset <= '0';
								-- currentPage <= currentPage;
								-- nextPage <= NOT currentPage;

						-- Save Last output to RAM
							IF (filterLastLayer = '1' OR layerType = '1') AND ( (innerCounterOut /= "00000" OR outerCounterOut /= "00000") OR currentPage = "1") THEN
							-- IF (filterLastLayer = '1' OR layerType = '1') AND ( NOT (innerCounterOut  = "00000" ) OR  NOT(outerCounterOut = "00000")) THEN
								saveToRAM <= '1';
							ELSE
								saveToRAM <= '0';
							END IF;

						-- Set Next State
							nextState <= convReadColState;

						stateRegEn <= '1';
			--------------------------------------------------------------------------------------------------------
				WHEN convReadColState =>

						-- Release Signal raised by past state
							saveToRAM <= '0';
							shift12 <= '0';
							shift21 <= '0';
							-- update working page
								-- currentPage <= nextPage;
								-- nextPage <= nextPage;
								pageRegEn <= '0';
								pageRegReset <= '0';
							loadFilter <= '0';
							-- loadBias <= '0';
							addToOutputBuffer <= '0';
							outputBufferEn <= '0';
							finish <= '0';
						
							-- Release Counters Enables and reset for inner counter
								outerCounterEn <= '0'; 
								innerCounterEn <= '0';
								resetInnerCounter <= '0';
								resetOuterCounter <= '0';
					

						-- Convolution Start or Pooling
							conv <= NOT layerType; -- 0 conv 1 pooling
							pool <= layerType;

				
						-- Read Column/Window
							-- Check to know weather to load Window or Column or nothing
								IF innerCounterOut = outputSize AND outerCounterOut /= outputSize THEN
									-- Load Window only
									loadWindow <= '1'; 
									readNextCol <= '0';
								ELSE IF outerCounterOut = outputSize AND innerCounterOut = outputSize THEN
										-- THE LAST TIME , No window or column loading
										loadWindow <= '0'; 
										readNextCol <= '0';
									ELSE
										-- Load Column only
										loadWindow <= '0';
										readNextCol <= '1';
									END IF;
								END IF;

						-- Set Next State
							IF layerType = '0' THEN
								nextState <= addState;
							ELSE
								nextState <= saveState;
							END IF;

						-- When DMA finishes Go to specified Next State	
							stateRegEn <= (finishConv AND dmaBFinish);

			--------------------------------------------------------------------------------------------------------
				WHEN addState =>
						-- Release Signals that were raised by past state
							conv <= '0';
							pool <= '0';
							shift12 <= '0';
							shift21 <= '0';
							loadFilter <= '0';
							readNextCol <= '0';
							loadWindow <= '0';
							-- loadBias <= '0';
							saveToRam <= '0';
							finish <= '0';

						-- Release Counters Enables and reset for inner counter
							outerCounterEn <= '0'; 
							innerCounterEn <= '0';
							resetInnerCounter <= '0';
							resetOuterCounter <= '0';
					

						addToOutputBuffer <= '1';
						outputBufferEn <= '0';

						-- update working page
							-- currentPage <= nextPage;
							-- nextPage <= nextPage;
							pageRegEn <= '0';
							pageRegReset <= '0';
						
						-- Set Next State
							nextState <= saveState;

							stateRegEn <= '1';
			--------------------------------------------------------------------------------------------------------
				WHEN saveState =>

						-- Release Signals that were raised by past state
							addToOutputBuffer <= '0';		
							loadFilter <= '0';
							loadWindow <= '0';
							-- loadBias <= '0';
							readNextCol <= '0';

							conv <= '0';
							pool <= '0';
							shift12 <= '0';
							shift21 <= '0';
							-- update working page
								-- currentPage <= nextPage;
								-- nextPage <= nextPage;
								pageRegEn <= '1';
								pageRegReset <= '0';
							saveToRam <= '0';
							finish <= '0';

							resetOuterCounter <= '0';

						-- Enable Output buffer to save final result of this operation added to its last content
							outputBufferEn <= '1';

						-- Set Inner counter to continue
							innerCounterEn <= '1';
						
						-- Check if row/image ended
							IF innerCounterOut = outputSize THEN
								-- If this row is finished reset inner counter and count 1 at outer counter
									outerCounterEn <= '1'; 
									resetInnerCounter <= '1';
							ELSE
								-- If row is not finished or begging of new one set signals back to 0
									resetInnerCounter <= '0';
									outerCounterEn <= '0';
							END IF;
					
					-- Set Next State
						IF outerCounterOut = outputSize AND innerCounterOut = outputSize THEN
							nextState <= endState; -- If image is finished
						ELSE
							nextState <= shiftState; -- If image is finished go to Convolution state again
						END IF;

					stateRegEn <= '1';
			--------------------------------------------------------------------------------------------------------
			-- The last state after completeing convolution image with filter
				WHEN endState =>
	
					loadFilter <= '0';
					loadWindow <= '0';
					-- loadBias <= '0';
					addToOutputBuffer <= '0';
					outputBufferEn <= '0';
					readNextCol <= '0';
					conv <= '0';
					pool <= '0';
					shift12 <= '0';
					shift21 <= '0';
					-- currentPage <= '0';
					-- nextPage <= '1';
					pageRegEn <= '0';
					pageRegReset <= '0';

					-- Release Counters Enables and reset for inner counter
						outerCounterEn <= '0'; 
						innerCounterEn <= '0';
						resetInnerCounter <= '0';
						resetOuterCounter <= '0';
				

					saveToRAM <= filterLastLayer OR layerType;

					-- Raise finish Signal
						finish <= '1';
					-- Set Next State
						nextState <= idleState; -- Get back to 0 state (idle state)

						stateRegEn <= '1';

			END CASE;
	END PROCESS;




	-- -- Counter to stop when finish image
	-- 	innerCounterMap : ENTITY work.Counter GENERIC MAP (5) PORT MAP ( "00000",resetInnerCounter, finalInnerCounterEn , '0',innerCounterOut);

	-- -- Counter to stop when finish image
	-- 	outerCounterMap : ENTITY work.Counter GENERIC MAP (5) PORT MAP ( "00000",resetOuterCounter, finalOuterCounterEn , '0',outerCounterOut);

	-- Counter to stop when finish image
		innerCounterMap : ENTITY work.Counter GENERIC MAP (maxOutputImage) PORT MAP ( innerCounterEn,resetInnerCounter,clk,altInnerCounterOut);

	-- Counter to stop when finish image
		outerCounterMap : ENTITY work.Counter GENERIC MAP (maxOutputImage) PORT MAP ( outerCounterEn,resetOuterCounter,clk,altOuterCounterOut);
		
		pageRegMap : ENTITY work.Reg GENERIC MAP(1) PORT MAP (nextPage,pageRegEn,clk,pageRegReset,currentPage);

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