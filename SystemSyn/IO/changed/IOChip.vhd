library ieee;
use ieee.std_logic_1164.all;

-- this is the io chip, everything belongs here
entity iochipio is

port    (
	  din: in std_logic_vector(15 downto 0);
		clk, rst, imageorcnn, intr, load, processing: in std_logic;
		donewithphase, busy: out std_logic;
		donedmafc, donedmacnn, donedmaimage: in std_logic;
		imgramwrite, cnnramwrite, fcramwrite: inout std_logic;
		imagedmaaddressout: out std_logic_vector(12 downto 0);
		imagedmadataout: out std_logic_vector(15 downto 0);
		cnndmaaddressout: out std_logic_vector(11 downto 0);
		cnndmadataout: out std_logic_vector(15 downto 0);
		fcdmaaddressout: out std_logic_vector(15 downto 0);
		fcdmadataout: out std_logic_vector(79 downto 0);
		result: out std_logic_vector(3 downto 0);
		fcresult: in std_logic_vector(3 downto 0);
		fcdone: in std_logic;
		tocnn: inout std_logic;
		tofc: out std_logic
	);

end entity;

architecture iochipioarch of iochipio is
signal decompzerostate, cnncounterenable, decompdecrementorenable, cnnregisterenable, imagecounterenable, 
			 imageregisterenable, fccounterenable, fcregisterenable, imageload, intrdelayed: std_logic;
signal interfaceoutput: std_logic_vector(15 downto 0);
signal decompdataout: std_logic_vector(7 downto 0);
signal decompdatain: std_logic_vector(5 downto 0);
signal imagedmaaddress: std_logic_vector(9 downto 0);
signal high, fcramwriteold, modulocounterzerostate: std_logic;
begin
high <= '1';
io: entity work.io generic map(16,4) 
					 port map(din, donedmafc, donedmacnn, donedmaimage, intr, load, clk, rst, processing, imageorcnn, 
					 decompzerostate, donewithphase, cnncounterenable, imagecounterenable, fccounterenable,
					 decompdecrementorenable, busy, tocnn, tofc, intrdelayed, imageload, imageregisterenable, cnnregisterenable, 
					 fcregisterenable, imgramwrite, cnnramwrite, fcramwrite, interfaceoutput, fcramwriteold, result, fcresult, fcdone);
decompdatain <= interfaceoutput(5 downto 0);
imagedmaaddress <= interfaceoutput(15 downto 6);

decomp: entity work.decompressorio port map(decompdatain,clk,decompdecrementorenable,rst,imageload,intrdelayed,
decompzerostate,decompdataout);

imagedma: entity work.dmaimageio port map(decompdataout,imagedmaaddress,clk,imagecounterenable,imageregisterenable,
rst,intrdelayed,imagedmadataout,imagedmaaddressout);

cnndma: entity work.dmacnnio port map(interfaceoutput,clk,cnncounterenable,cnnregisterenable,rst,cnndmadataout,
cnndmaaddressout);

fcdma: entity work.fcdmaio port map(interfaceoutput,clk, rst, fccounterenable, fcregisterenable, donedmafc, fcdmaaddressout, 
												 fcdmadataout, fcramwriteold);

end architecture;
