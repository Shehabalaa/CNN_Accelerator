library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TestBooth is
end TestBooth;

architecture TestBenc_arch of TestBooth is
  type tests is array (9 downto 0) of integer;
  signal clk,start,done : std_logic;
  signal m,r : std_logic_vector(15  downto 0);
  signal f :std_logic_vector(31 downto 0);
  signal right_ans : std_logic_vector(31 downto 0);
begin
  test_c : entity work.BoothMul generic map(16) port map (m,r,f,clk,start,done);
  mul_c : entity work.Mul  generic map(16) port map (m,r,right_ans);
  process
    variable mytests : tests;
  begin
    mytests := (1,0,-15,50,100,12,-32,70,59,-800);
    l1: for i in 0 to 9 loop
      l2: for j in 0 to 9 loop
        m <= std_logic_vector(to_signed(mytests(i), m'length));
        r <= std_logic_vector(to_signed(mytests(j), m'length));
        start <= '0';
        wait for 10 ns;
        start <= '1';
        wait for 1800 ns;
        assert f = right_ans
        report "Fail in test case "
        severity error;
      end loop;
    end loop;
  end process;

  process
  begin
    clk <= '0';
    wait for 50 ns;
    clk <= '1';
    wait for 50 ns;
  end process;
end TestBenc_arch ;
