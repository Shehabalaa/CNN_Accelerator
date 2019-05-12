library ieee;
use ieee.std_logic_1164.all;
use work.types.all;


-- cnn cores

-- filterbus --> the bus where filters can read input from
-- windowbus --> the bus where page registers can read input from
-- decoderpage1 --> which register from page 1 to read from the internal bus
-- decoderpage2 --> which register from page 2 to read from the internal bus
-- decoderfilters --> which register from filters to read from the internal bus
-- clk --> the clk of the system
-- rst --> resets all registers
-- writepage1 --> enable the decoder of page 1
-- writepage2 --> enable the decoder of page 2
-- writefilter --> enable the decoder of filter
-- shift2to1 --> shift all register in page 2 to page 1
-- shift1to2 --> shift all register in page 1 to page 2
-- pageturn --> 0 for page 1 to out, 1 for page 2 to out
-- start --> 1 to start the dot product operation
-- layer type --> 0 for conv and 1 for pool
-- filter type --> 0 for 3*3 filter and 1 for 5*5 filter
-- done --> signal to indicate that dot product is ok
-- finalsum --> the final output of the dot product operation



entity cnncorescnn is
  generic (
	filtersize: integer := 8;
	windowsize: integer := 16;
	numunits: integer := 5;
	numrows: integer := 5;
	decodersize: integer := 3
  );
  port(
	  filterbus: in std_logic_vector((numunits*filtersize)-1 downto 0);
	  windowbus: in std_logic_vector((numunits*windowsize)-1 downto 0);
	  decoderrow: in std_logic_vector(decodersize-1 downto 0);
	  clk, rst, writepage1, writepage2, writefilter, shift2to1, shift1to2, pageturn, start, layertype, filtertype: in std_logic;
	  donecores: out std_logic;
	  finalsumconv: out std_logic_vector(windowsize-1 downto 0)
    );

end cnncorescnn;

------------------------------------------------------------

-- cnn cores architecture

architecture cnncorescnnarch of cnncorescnn is

	signal currentpage, outmuls, addersinputs: arrayofregs16(0 to (numunits*numrows)-1);
	signal filter: arrayofregs8(0 to (numunits*numrows)-1);
	signal donemul, notclk, done: std_logic;
	signal outadder, outshifter, finalsum: std_logic_vector(windowsize-1 downto 0);
    
	begin

		-- register file of cores
		regfilemap: entity work.regfilecnn generic map(filtersize, windowsize, numunits, numrows, decodersize, 3) port map (
			filterbus, windowbus, 
			decoderrow,
			clk, rst, writepage1, writepage2, writefilter, shift2to1, shift1to2, pageturn,
			currentpage, filter
		);


		-- cores multipliers
		-- update here on sizes when updating multipliers
		mulsmap: entity work.cnnmulscnn generic map(25) port map (
			filter, currentpage,
			outmuls,
			clk, start, rst,
			donemul
		);

		

		---------------------------------------------------
		-- may be will be some logic here on done signal --
		--  to make sure that the addition is completed  --
		---------------------------------------------------

		done <= layertype or donemul;
		donecores <= done;
		notclk <= not clk;

		---------------------------------------------------
		--        let's keep it like that for now   	 --
		---------------------------------------------------




		-- input to adders (output of muls if conv) or (output of page registers if pool)
		loop1: for i in 0 to (numunits * numrows) - 1
        generate
            
            inputaddersmap: entity work.mux2cnn generic map(windowsize) port map(outmuls(i), currentpage(i), layertype, addersinputs(i));

        end generate;


		-- cores adders
		addersmap: entity work.cnnadderscnn generic map(windowsize) port map (
			addersinputs, filtertype, outadder
		);


		--shifter for pool
		shiftermap: entity work.cnnshiftercnn generic map(windowsize) port map (
			outadder, filtertype, outshifter
		);


		--final output
		finaloutmap: entity work.mux2cnn generic map(windowsize) port map(
			outadder, outshifter, layertype, finalsum
			);


		capturereg: entity work.regcnn generic map(windowsize) port map(
			finalsum, done, notclk, rst, finalsumconv
		);

end architecture;