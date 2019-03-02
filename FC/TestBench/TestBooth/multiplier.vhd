library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mul is
    generic (n :integer := 4);
    port (
        a,b : in std_logic_vector(n-1  downto 0);
        f : out std_logic_vector(2*n-1  downto 0)
    );
end;

architecture Mul_arch of Mul is
begin
    f <= std_logic_vector(signed(a) * signed(b));
end Mul_arch ;