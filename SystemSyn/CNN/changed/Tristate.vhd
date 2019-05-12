library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;

-- tristatecnn buffer entity

entity tristatecnn is
        generic (wordsize : integer := 32);
    port(
            input : in std_logic_vector(wordsize-1  downto 0);
            en:in std_logic;
            output : out std_logic_vector(wordsize-1 downto 0)
        );

end tristatecnn;

----------------------------------------------------------------------
-- tristatecnn buffer architecture

architecture tristatecnnarch of tristatecnn is

begin

    output <= input when en='1'
    else (others=>'z');


end tristatecnnarch;