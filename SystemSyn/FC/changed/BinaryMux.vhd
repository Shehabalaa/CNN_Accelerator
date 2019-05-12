library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- this mux select only between two values with n bits in length
entity binarymuxfc is
    generic (n :integer := 16);
    port (
        a,b :in std_logic_vector(n-1 downto 0);
        sel : in std_logic;
        f :out std_logic_vector(n-1 downto 0)
    );
end binarymuxfc;


architecture binarymuxfcarch of binarymuxfc is
begin
    f <= a when sel ='0' else b;
end binarymuxfcarch; 