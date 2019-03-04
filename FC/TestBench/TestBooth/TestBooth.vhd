library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TestBooth is
end TestBooth;

architecture TestBencArch of TestBooth is
  type tests is array (9 downto 0) of integer;
  signal clk,start,done,rst : std_logic;
  signal m,r,c : std_logic_vector(15  downto 0);
  signal f :std_logic_vector(31 downto 0);
  signal rightAns,rightAns2,paddc : std_logic_vector(31 downto 0);
begin
  --test_c : entity work.BoothMul generic map(16) port map (m,r,f,clk,start,done); --normal booth
  test_c : entity work.ModifiedBoothMul generic map(16) port map (m,r,f,clk,start,rst,done,c); --modified
  mul_c : entity work.Mul  generic map(16) port map (m,r,rightAns);
  paddc <= (15 downto 0 => c(15)) & c;
  add_c : entity work.Add generic map(32) port map (rightAns,paddc,rightAns2);
  process
    variable mytests : tests;
  begin
    rst<='1';
    wait for 10 ns;
    rst<='0';
    wait for 10 ns;

    mytests := (1,0,-15,50,100,12,-32,70,59,-800);
    l1: for i in 0 to 9 loop
      l2: for j in 0 to 9 loop
        l3: for k in 0 to 9 loop
          m <= std_logic_vector(to_signed(mytests(i), m'length));
          r <= std_logic_vector(to_signed(mytests(j), r'length));
          c <= std_logic_vector(to_signed(mytests(k), c'length));
          start <= '1';
          --wait for 1600 ns; --slow
          wait for 800 ns; -- modified
          assert f = rightAns2
          report "Fail in test case "
          severity error;
          start <= '0';
          wait for 100 ns;
        end loop;
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
end TestBencArch ;
