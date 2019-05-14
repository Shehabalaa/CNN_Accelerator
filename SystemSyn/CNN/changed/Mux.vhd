library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.types.arrayofregs;

-- mux entity

entity muxcnn is

    generic (
        inputnum : integer := 2; 
        wordsize : integer := 16
        );
    port(
            inputs : in arrayofregs(0 to inputnum-1)(wordsize-1 downto 0);
            selectionlines : in std_logic_vector (integer(ceil(log2(real(inputnum))))-1 downto 0);
            output : out std_logic_vector(wordsize-1 downto 0)
        );

end entity muxcnn;

------------------------------------------------------------

-- muxcnn architecture

architecture muxcnnarch of muxcnn is

    begin

        output <=  inputs(to_integer(unsigned(selectionlines)));

end muxcnnarch;
