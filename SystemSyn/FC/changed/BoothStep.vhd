library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity boothstepfc is
    port (
        p :in std_logic_vector(32 downto 0);
        x :in std_logic_vector(23 downto 0);
        f :out std_logic_vector(32 downto 0)
    );
end boothstepfc;

architecture boothstepfcarch of boothstepfc is
    signal op2,res : std_logic_vector(23 downto 0);
    signal carryin : std_logic;
begin
    addercmp : entity work.nbitadderfc generic map(24) port map(p(32 downto 9),op2,carryin,res);
    carryin <= p(2) and (p(1) nand p(0) ); -- this for twos complenet
    
    op2 <= (23 downto 0 => '0') when p(2 downto 0) = "000" or p(2 downto 0) = "111"
    else x when p(2 downto 0) = "001" or p(2 downto 0) = "010"
    else x(23-1 downto 0) &'0' when p(2 downto 0) = "011"
    else not (x(23-1 downto 0)) &'1'  when p(2 downto 0) = "100"
    else not x;

    f <= "00" & res & p(8 downto 2);
end boothstepfcarch; 