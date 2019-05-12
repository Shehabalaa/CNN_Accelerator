library ieee;
use ieee.std_logic_1164.all;

--io interface entity is responsible for reading data from cpu and writing the final result
--din: data placed by cpu on the bus
--intr: signal set by cpu when placing data on bus, to alert the chip, forwarded from the controller to the interface
--clk: the chip's clock, forwarded from the controller
--rst: signal for resetting the registers, used as initialization for the chip
--zerostate: signal informs the controller if the global counter has reached its zero state
--q: data outputted by the io interface register
--result: 4 bits containing the class of the input image (0->9)
entity iointerfaceio is
  generic (chipinputsize: integer :=16;
           chipoutputsize: integer :=4);
  port(
      din: in std_logic_vector(chipinputsize - 1 downto 0);
      intr, clk, rst, globalcounterenable, globalcounterload: in std_logic;
      zerostate: out std_logic;
      q: out std_logic_vector(chipinputsize - 1 downto 0);
      result: out std_logic_vector(chipoutputsize - 1 downto 0);
      fcresult: in std_logic_vector(chipoutputsize - 1 downto 0);
      fcdone: in std_logic
  );
end entity;

architecture iointerfaceioarch of iointerfaceio is
signal myzerostate, myglobalcounterenable: std_logic;
signal globalcounteroutput, zeros: std_logic_vector(chipinputsize - 1 downto 0);
begin
  zeros <= (others => '0');
  
  myzerostate <= '1' when globalcounteroutput = zeros
                   else '0';

  zerostate <= myzerostate;
  myglobalcounterenable <= globalcounterenable or globalcounterload;
  globalcounter: entity work.downcountersyncload generic map(chipinputsize) 
                        port map(din, myglobalcounterenable, globalcounterload, rst, clk, globalcounteroutput);

  datareg: entity work.regio generic map(chipinputsize) port map(din, intr, clk, rst, q);
  result <= fcresult when fcdone = '1'
            else (others => '0');
end architecture;