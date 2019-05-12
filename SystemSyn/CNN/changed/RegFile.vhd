library ieee;
use ieee.std_logic_1164.all;
use work.types.all;
use ieee.math_real.all;

-- register file

-- filterbus --> the bus where filters can read input from
-- windowbus --> the bus where page registers can read input from
-- decoderpage1 --> which register from page 1 to read from the internal bus
-- decoderpage2 --> which register from page 2 to read from the internal bus
-- decoderfilters --> which register from filters to read from the internal bus
-- clk --> the clk of the system
-- rst --> resets all registers
-- decoderpage1enable --> enable the decoder
-- decoderpage2enable --> enable the decoder
-- decoderfilterenable --> enable the decoder
-- shift2to1 --> shift all register in page 2 to page 1
-- shift1to2 --> shift all register in page 1 to page 2
-- pageturn --> 0 for page 1 to out, 1 for page 2 to out
-- pagesouts --> chosen out page (25 register outputs)
-- filtersouts --> filters outputs (25 register outputs)

entity regfilecnn is

  generic (
      filtersize: integer := 8;
      windowsize: integer := 16;
      numunits: integer := 5;
      numrows: integer := 5;
      decodersize: integer := 3;
      primary: integer := 3
      );

  port(
      filterbus: in std_logic_vector((numunits*filtersize)-1 downto 0);
      windowbus: in std_logic_vector((numunits*windowsize)-1 downto 0);
      decoderrow: in std_logic_vector(decodersize-1 downto 0);
      clk, rst, enablepage1read, enablepage2read, enablefilterread, shift2to1, shift1to2, pageturn: in std_logic;
      pagesouts: out arrayofregs16(0 to (numunits*numrows)-1);
      filtersouts: out arrayofregs8(0 to (numunits*numrows)-1)
    );

end regfilecnn;

------------------------------------------------------------

-- register file architecture

architecture regfilecnnarch of regfilecnn is

    signal page1out, page2out: arrayofregs16(0 to (numunits*numrows)-1 +5);
    -- signal decodedpage1, decodedpage2, decodedfilter: std_logic_vector(0 to (2**decodersize)-1);
    signal page1enables, page2enables, filterenables: std_logic_vector(0 to (2**decodersize)-1);
    signal decodedrow: std_logic_vector((2**decodersize)-1 downto 0);

    signal temppageoutprimary: arrayofregs16(0 to (numrows*primary)-1);
    signal temppageoutsecondary: arrayofregs16(0 to (numrows*(numunits-primary)-1));

    signal tempfilteroutprimary: arrayofregs8(0 to (numrows*primary)-1);
    signal tempfilteroutsecondary: arrayofregs8(0 to (numrows*(numunits-primary)-1));

    signal decoderrowenable: std_logic;

    begin

        -- decoder1map: entity work.decodercnn generic map(decodersize) port map(decoderpage1, decoderpage1enable, decodedpage1);
        -- decoder2map: entity work.decodercnn generic map(decodersize) port map(decoderpage2, decoderpage2enable, decodedpage2);
        -- decoderfiltermap: entity work.decodercnn generic map(decodersize) port map(decoderfilters, decoderfilterenable, decodedfilter);

        decoderrowenable <= enablepage1read or enablepage2read or enablefilterread;

        decoderrowmap: entity work.decodercnn generic map(decodersize) port map(decoderrow, decoderrowenable, decodedrow);



        loop1: for i in 0 to numrows - 1
        generate

            page1enables(i) <= decodedrow(i) and enablepage1read;
            page2enables(i) <= decodedrow(i) and enablepage2read;
            filterenables(i) <= decodedrow(i) and enablefilterread;
            
            regrowmap: entity work.regrowcnn generic map(filtersize, windowsize, numunits, primary) port map(
                filterbus, windowbus,
                page1out((i+1)*numunits to (i+1)*numunits+numunits-1),
                page2out((i+1)*numunits to (i+1)*numunits+numunits-1),
                clk, rst,
                page1enables(i), page2enables(i), filterenables(i),
                shift2to1, shift1to2, pageturn,
                page1out(i*numunits to i*numunits+numunits-1),
                page2out(i*numunits to i*numunits+numunits-1),
                temppageoutprimary(i*primary to i*primary+primary-1),
                temppageoutsecondary(i*(numunits-primary) to i*(numunits-primary)+(numunits-primary)-1),
                tempfilteroutprimary(i*primary to i*primary+primary-1),
                tempfilteroutsecondary(i*(numunits-primary) to i*(numunits-primary)+(numunits-primary)-1)
                );

        end generate;

        pagesouts(0 to numrows*primary-1) <= temppageoutprimary;
        pagesouts(numrows*primary to numrows*numunits-1) <= temppageoutsecondary;

        filtersouts(0 to numrows*primary-1) <= tempfilteroutprimary;
        filtersouts(numrows*primary to numrows*numunits-1) <= tempfilteroutsecondary;

end architecture;