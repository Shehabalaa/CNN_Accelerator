library ieee;
use ieee.std_logic_1164.all;
use work.types.all;
use ieee.math_real.all;

-- register row
-- this entity contains five register units.

-- filterbus --> the bus where filters can read input from
-- windowbus --> the bus where page registers can read input from
-- clk --> the clk of the system
-- rst --> resets all registers
-- enablepage1read --> enable page 1 registers to read from bus
-- enablepage2read --> enable page 2 registers to read from bus
-- enablefilterread --> enable filter registers to read from bus
-- shift2to1 --> shift all register in page 2 to page 1
-- shift1to2 --> shift all register in page 1 to page 2
-- pageturn --> 0 for page 1 to out, 1 for page 2 to out
-- page1out --> output of page 1 registers to be passed to another row
-- page2out --> output of page 2 registers to be passed to another row
-- pagesoutsprimary --> the first primary pages outs (3 in our case)
-- pagesoutssecondary --> the rest of page registers outs (2 in our case)
-- filtersoutsprimary --> the first primary filters outputs (3 in our case)
-- filtersoutssecondary --> the rest of filters outputs (2 in our case)

entity regrowcnn is

  generic (
      filtersize: integer := 8;
      windowsize: integer := 16;
      numunits: integer := 5;
      primary: integer := 3
      );

  port(
      filterbus: in std_logic_vector((numunits*filtersize)-1 downto 0);
      windowbus: in std_logic_vector((numunits*windowsize)-1 downto 0);
      page1nextrow, page2nextrow: in arrayofregs16(0 to numunits-1);
      clk, rst, enablepage1read, enablepage2read, enablefilterread, shift2to1, shift1to2, pageturn: in std_logic;
      page1out, page2out: out arrayofregs16(0 to numunits-1);
      pagesoutsprimary: out arrayofregs16(0 to primary-1);
      pagesoutssecondary: out arrayofregs16(0 to (numunits-primary)-1);
      filtersoutsprimary: out arrayofregs8(0 to primary-1);
      filtersoutssecondary: out arrayofregs8(0 to (numunits-primary)-1)
    );

end regrowcnn;

------------------------------------------------------------

-- regrowcnn architecture

architecture regrowcnnarch of regrowcnn is

    signal temppagesouts: arrayofregs16(0 to numunits-1);
    signal tempfiltersouts: arrayofregs8(0 to numunits-1);

    begin

        loop1: for i in 0 to numunits - 1
        generate
            
            regunitmap: entity work.regunitcnn generic map(filtersize, windowsize) port map(

                filterbus((i*filtersize+filtersize-1) downto i*filtersize),
                windowbus((i*windowsize+windowsize-1) downto i*windowsize),
                page1nextrow(i), page2nextrow(i),
                clk, rst, 
                enablepage1read, enablepage2read, enablefilterread,
                shift2to1, shift1to2, pageturn,
                temppagesouts(i), page1out(i), page2out(i),
                tempfiltersouts(i)

                );

        end generate;

        pagesoutsprimary <= temppagesouts(0 to primary-1);
        pagesoutssecondary <= temppagesouts(primary to numunits-1);

        filtersoutsprimary <= tempfiltersouts(0 to primary-1);
        filtersoutssecondary <= tempfiltersouts(primary to numunits-1);

end architecture;