library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TestFC is
end TestFC;

architecture TestBenchArch of TestFC is
  SIGNAL cnnDone,clk,reset,fcDone : STD_LOGIC;
  --SIGNAL stops: STD_LOGIC;
begin
  FCcmp: ENTITY work.FcMain PORT MAP(cnnDone,clk,reset,fcDone);
  process
  begin 
    reset <= '1';
    cnnDone <= '0';
    wait for 20 ns;
    reset <= '0';
    wait for 20 ns;
    cnnDone <= '1';

    if(fcDone /= 'U' and fcDone = '1')then 
      report "FC TEST IS DONE";
      wait;
    end if;

    -- wait for 20 ns;
    -- stops <= '1' after 800 ns;
  end process;

  process
  begin
    clk <= '0';
    wait for 50 ns;
    clk <= '1';
    wait for 50 ns;
  end process;
end TestBenchArch;
