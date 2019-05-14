library ieee;
use ieee.std_logic_1164.all;
--use ieee.math_real.all;

entity inversemuxio is 
	generic(n: integer :=16);
	port(
		
		datain: in std_logic_vector(n-1 downto 0);
		--sel: in std_logic_vector(ceil(log2(real(n)))-1 downto 0);
		sel: in std_logic_vector(2 downto 0);
		en,rst: in std_logic;
		dataout1: out std_logic_vector(n-1 downto 0);
		dataout2: out std_logic_vector(n-1 downto 0);
		dataout3: out std_logic_vector(n-1 downto 0);
		dataout4: out std_logic_vector(n-1 downto 0);
		dataout5: out std_logic_vector(n-1 downto 0)
	);
end inversemuxio;


architecture inversemuxioarch of inversemuxio is 

signal zeros: std_logic_vector (n-1 downto 0);
begin
zeros <= (others => '0');
dataout1 <= datain when sel = "000" and en = '1'
else zeros when rst = '1'
else datain;
dataout2 <= datain when sel = "001" and en = '1'
else zeros when rst = '1'
else datain;
dataout3 <= datain when sel = "010" and en = '1'
else zeros when rst = '1'
else datain;
dataout4 <= datain when sel = "011" and en = '1'
else zeros when rst = '1'
else datain;
dataout5 <= datain when sel = "100" and en = '1'
else zeros when rst = '1'
else datain;


end inversemuxioarch;
