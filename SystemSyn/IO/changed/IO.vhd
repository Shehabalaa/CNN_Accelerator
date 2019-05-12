library ieee;
use ieee.std_logic_1164.all;

--
entity ioio is
  generic (chipinputsize: integer :=16;
           chipoutputsize: integer :=4
          );
  port(
      din: in std_logic_vector(chipinputsize - 1 downto 0);
      donedmafc, donedmacnn, donedmaimage, intr, load, clk, rst, processing, imageorcnn, 
      decompzerostate: in std_logic;
      donewithphase, cnncounterenable, imagecounterenable, fccounterenable, decompdecrementorenable,
      busy: out std_logic;
	  tocnn: inout std_logic;
	  tofc: out std_logic;
      intrdelayed, imageload, imageregisterenable, cnnregisterenable, fcregisterenable,
      imageramenable, cnnramenable, fcramenable: inout std_logic;
      interfaceoutput: out std_logic_vector(chipinputsize - 1 downto 0);
      fcramwriteold: in std_logic;
      result: out std_logic_vector(chipoutputsize - 1 downto 0);
      fcresult: in std_logic_vector(chipoutputsize - 1 downto 0);
      fcdone: in std_logic
  );
end entity;


architecture ioioarch of ioio is
  signal interfaceregenable, interfacemuxsel, interfacemuxenable, globalcounterenable, 
         zerostate, globalcounterload: std_logic;
  begin
    interface: entity work.iointerface generic map(chipinputsize, chipoutputsize) 
                      port map(din, intr, clk, rst, globalcounterenable, 
                      globalcounterload, zerostate, interfaceoutput, result, fcresult, fcdone);
    controller: entity work.controller generic map(chipinputsize, chipoutputsize) 
                      port map(donedmafc, donedmacnn, donedmaimage, intr, load, clk, processing, imageorcnn, zerostate,
                      decompzerostate, rst, fcramwriteold, intrdelayed, globalcounterload, imageload, imageregisterenable, 
                      imageramenable, cnnregisterenable, cnnramenable, fcregisterenable, fcramenable, busy, 
                      donewithphase, interfaceregenable, interfacemuxsel, interfacemuxenable, cnncounterenable, 
                      fccounterenable, decompdecrementorenable, imagecounterenable, globalcounterenable, tocnn, tofc);
end architecture;
