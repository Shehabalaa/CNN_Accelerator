library ieee;
use ieee.std_logic_1164.all;

-- register unit for each core in the cnn

-- filterbus --> the bus where filters can read input from
-- windowbus --> the bus where page registers can read input from
-- clk --> the clk of the system
-- rst --> resets all registers
-- enableregpage1, enableregpage2, enableregfilter --> enables the internal registers to read
-- page1readbusorpage1 --> 0 to make page 1 read from the internal bus, 1 to make it read from page 2 next unit and no need for the enable
-- page1readbusorpage2 --> 0 to make page 2 read from the internal bus, 1 to make it read from page 1 next unit and no need for the enable
-- pageturn --> 0 for page 1 to out, 1 for page 2 to out
-- regpage1nextunit --> the page1 register input from the next unit
-- regpage2nextunit --> the page2 register input from the next unit
-- outregpage --> the output of the current page to be multiplied or added
-- outfilter --> the output of the filter register

entity regunitcnn is
  generic (
    filtersize: integer := 8;
    windowsize: integer := 16
    );

  port(
      filterbus: in std_logic_vector(filtersize-1 downto 0);
      windowbus: in std_logic_vector(windowsize-1 downto 0);
      regpage1nextunit, regpage2nextunit: in std_logic_vector(windowsize-1 downto 0);
      clk, rst, enableregpage1, enableregpage2, enableregfilter, page1readbusorpage2, page2readbusorpage1, pageturn: in std_logic;
      outregpage, outputregpage1, outputregpage2: out std_logic_vector(windowsize-1 downto 0);
      outfilter: out std_logic_vector(filtersize-1 downto 0)
    );

end regunitcnn;

------------------------------------------------------------

-- regunitcnn architecture

architecture regunitcnnarch of regunitcnn is



signal inputregpage1, inputregpage2, tempoutpage1, tempoutpage2: std_logic_vector (windowsize-1 downto 0);
signal reg1totalenable, reg2totalenable: std_logic;

begin

      inputregpage1map: entity work.mux2cnn generic map(windowsize) port map(windowbus, regpage2nextunit, page1readbusorpage2, inputregpage1);
      inputregpage2map: entity work.mux2cnn generic map(windowsize) port map(windowbus, regpage1nextunit, page2readbusorpage1, inputregpage2);

      reg1totalenable <= enableregpage1 or page1readbusorpage2;
      reg2totalenable <= enableregpage2 or page2readbusorpage1;

      regpage1map: entity work.regcnn generic map(windowsize) port map(inputregpage1, reg1totalenable, clk, rst, tempoutpage1);
      regpage2map: entity work.regcnn generic map(windowsize) port map(inputregpage2, reg2totalenable, clk, rst, tempoutpage2);
      regfiltermap: entity work.regcnn generic map(filtersize) port map(filterbus, enableregfilter, clk, rst, outfilter);

      outputregpage1 <= tempoutpage1;
      outputregpage2 <= tempoutpage2;

      outpagemap: entity work.mux2cnn generic map(windowsize) port map(tempoutpage1, tempoutpage2, pageturn, outregpage);

end architecture;