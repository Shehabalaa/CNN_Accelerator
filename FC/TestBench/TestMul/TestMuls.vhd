library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TestMul is
end TestMul;

architecture TestBencArch of TestMul is
  type tests8bits is array (199 downto 0) of std_logic_vector(7  downto 0);
  type tests16bits is array (199 downto 0) of std_logic_vector(15  downto 0);
  signal clk,start,done,rst,working : std_logic;
  signal q :std_logic_vector(7  downto 0);
  signal m :std_logic_vector(15  downto 0);
  signal fMul :std_logic_vector(15 downto 0);
  signal ansMul : std_logic_vector(15 downto 0);
begin
  --test_c : entity work.BoothMul generic map(16) port map (m,r,f,clk,start,done); --normal booth
  test_c : entity work.nMul8x16 generic map(1) port map (q(0)=>q,m(0)=>m,f(0)=>fMul,clk=>clk,start=>start,rst=>rst,done=>done,working=>working); --modified
  process
    variable op1Tests :tests8bits;
    variable op2Tests,answersMul :tests16bits;
  begin
    rst<='1';
    wait for 10 ns;
    rst<='0';
    wait for 10 ns;
    op1Tests := (x"8e", x"fc", x"51", x"8e", x"82", x"02", x"c5", x"95", x"c2", x"7a", x"1e", x"a1", x"b3", x"7e", x"b8", x"ad", x"dd", x"7f", x"2c", x"b2", x"d2", x"f1", x"5f", x"b6", x"fc", x"57", x"2b", x"c2", x"d1", x"01", x"84", x"c7", x"16", x"be", x"87", x"e5", x"56", x"fc", x"4f", x"9c", x"97", x"df", x"31", x"68", x"7d", x"d9", x"fe", x"61", x"ec", x"f9", x"72", x"22", x"9f", x"ae", x"8a", x"67", x"1f", x"d4", x"30", x"3b", x"46", x"c6", x"55", x"89", x"13", x"0b", x"5d", x"30", x"04", x"f8", x"45", x"c6", x"63", x"b8", x"a3", x"b1", x"e7", x"71", x"23", x"8a", x"1e", x"ad", x"40", x"9d", x"8c", x"b0", x"df", x"5b", x"1a", x"8e", x"49", x"0d", x"22", x"c1", x"9c", x"cc", x"e2", x"c8", x"25", x"ef", x"aa", x"64", x"7d", x"28", x"c8", x"b7", x"be", x"99", x"af", x"1f", x"f8", x"81", x"00", x"dd", x"d8", x"eb", x"83", x"4d", x"8a", x"18", x"0d", x"28", x"c7", x"3d", x"28", x"ff", x"48", x"8a", x"dd", x"63", x"32", x"bc", x"fe", x"42", x"2d", x"4d", x"6d", x"2a", x"a9", x"cf", x"85", x"c3", x"24", x"80", x"c2", x"e3", x"e9", x"5b", x"bb", x"9d", x"13", x"23", x"2f", x"f0", x"3e", x"8a", x"d4", x"82", x"f9", x"d2", x"f4", x"4c", x"9f", x"c5", x"22", x"6e", x"98", x"84", x"88", x"5e", x"7e", x"bd", x"e0", x"a1", x"e2", x"b8", x"53", x"7c", x"5b", x"c2", x"a6", x"ab", x"8a", x"c1", x"6e", x"d6", x"92", x"97", x"2e", x"aa", x"1f", x"e9", x"d0", x"1d", x"85", x"84", x"21", x"25", x"47", x"b4");
    op2Tests := (x"78d9", x"f26d", x"fe1a", x"a910", x"45d1", x"fc6f", x"caf7", x"a07e", x"01b2", x"d58c", x"3333", x"9138", x"adc3", x"46af", x"d9ff", x"f00d", x"1a5d", x"58af", x"a9cd", x"f1a8", x"6304", x"f73d", x"9404", x"27bd", x"0bc6", x"64f4", x"c005", x"5787", x"653c", x"8361", x"37f5", x"0669", x"c056", x"5445", x"61f7", x"6d2d", x"edf6", x"d8ce", x"a96b", x"5ab2", x"d86c", x"5c99", x"eb32", x"ffb6", x"ac86", x"c4ef", x"b008", x"9ca8", x"a9bb", x"1411", x"f790", x"7c69", x"be6a", x"29f2", x"0049", x"8426", x"765f", x"4dda", x"f558", x"6045", x"2767", x"bd7d", x"8c77", x"c68c", x"5a51", x"6fe4", x"f317", x"6631", x"337d", x"7814", x"e11f", x"19c8", x"74a9", x"20cf", x"c4b2", x"53bd", x"e7c2", x"7419", x"17c9", x"47b9", x"b7e6", x"a9e7", x"fcef", x"e54b", x"261b", x"0a17", x"c740", x"ce35", x"1e84", x"98e5", x"3c33", x"5039", x"3214", x"be96", x"9fa2", x"9ac9", x"fa8e", x"887d", x"24d0", x"7635", x"1981", x"97ae", x"40f7", x"edfd", x"aac5", x"8144", x"4a8c", x"a8b3", x"bed5", x"7fba", x"86bc", x"c564", x"68ac", x"2931", x"f35b", x"b95d", x"0257", x"1fb6", x"634a", x"fc57", x"2f65", x"786b", x"54ae", x"4157", x"426d", x"09a0", x"176e", x"98c5", x"51db", x"5106", x"9f40", x"f02a", x"d128", x"418b", x"1f04", x"af79", x"0726", x"fc95", x"8ee6", x"2818", x"03d0", x"dbb9", x"aa19", x"a920", x"735e", x"be44", x"f53c", x"ffd9", x"8186", x"6146", x"af0a", x"e7b8", x"4c85", x"16a5", x"95d2", x"9d8f", x"7bd0", x"6241", x"cdd2", x"4208", x"1eff", x"1e15", x"35de", x"5230", x"7586", x"6fb1", x"dda4", x"5a20", x"0680", x"c973", x"d95f", x"9397", x"ac85", x"0f08", x"bb8c", x"bb0a", x"6a93", x"f7c0", x"e75e", x"ce97", x"7723", x"3e84", x"539b", x"32ef", x"2370", x"5469", x"5458", x"6ce3", x"8f84", x"23f5", x"eab4", x"0fad", x"3f63", x"dbfa", x"0e47", x"9d36", x"37de", x"5aec", x"7301", x"1df6");
    answersMul := (x"28bd", x"00d9", x"fd98", x"9adb", x"768c", x"ffe3", x"30e4", x"9fad", x"fe5b", x"af12", x"17ff", x"a470", x"62f1", x"8b28", x"2ac1", x"14af", x"f195", x"affb", x"c4bc", x"117b", x"b8d5", x"020d", x"5fb5", x"d20d", x"ff43", x"893b", x"d503", x"ab35", x"b5a7", x"fe0d", x"9395", x"fa4a", x"ea1d", x"a918", x"46c9", x"d1f1", x"e7c2", x"0273", x"9520", x"7249", x"40ee", x"d041", x"f012", x"ff87", x"5cf5", x"23fe", x"027f", x"696e", x"1af5", x"fdce", x"f0f8", x"4217", x"6367", x"ca41", x"ff79", x"38ad", x"3956", x"ca7a", x"f802", x"58bf", x"2b18", x"3c46", x"668e", x"6ad3", x"1ad0", x"133b", x"ed3d", x"4ca4", x"0337", x"f0fd", x"deb5", x"e8a2", x"b475", x"db17", x"562d", x"98a2", x"0978", x"ccfc", x"0d01", x"7bc2", x"de33", x"6fa8", x"fcef", x"294f", x"baef", x"f363", x"1d43", x"b933", x"0c65", x"b7a8", x"44aa", x"104b", x"1a9a", x"4064", x"9692", x"523c", x"028d", x"6892", x"1548", x"e099", x"ddba", x"5cff", x"7ee2", x"f4be", x"4a93", x"908e", x"b31f", x"8c7f", x"527a", x"3dde", x"0f28", x"744d", x"0000", x"e979", x"07e7", x"172d", x"fb6e", x"2626", x"48ef", x"fea0", x"09a0", x"4b42", x"b495", x"3e46", x"2984", x"ffd9", x"1a5b", x"be54", x"d33c", x"7d55", x"b46a", x"10d3", x"0176", x"4397", x"15ce", x"9f1d", x"0c2c", x"fdc1", x"99bf", x"e14d", x"f8ac", x"2293", x"cfae", x"adc0", x"903c", x"1dc9", x"03de", x"ffc8", x"885b", x"6987", x"e7f6", x"f2b8", x"3831", x"fa56", x"9923", x"b580", x"aae1", x"3e90", x"057d", x"d08a", x"fa30", x"23b8", x"ae5b", x"b43b", x"3e6f", x"bff8", x"37d5", x"5162", x"f3d0", x"afe0", x"b3f3", x"717d", x"29bd", x"e9b0", x"2016", x"4d94", x"8a36", x"f004", x"dcf9", x"2fdd", x"5876", x"acf8", x"65da", x"cddc", x"3ce8", x"c89b", x"6f08", x"4d5b", x"af26", x"cfae", x"f5af", x"fa5d", x"d075", x"efad", x"e48f", x"bf67", x"1cce", x"3490", x"7f95", x"dc6b");
    l1: for i in 0 to 199 loop
          q <= op1Tests(i);
          m <= op2Tests(i);
          ansMul <= answersMul(i);
          start <= '1';
          --wait for 1600 ns; --slow
          wait for 400 ns; -- modified
          assert fMul = ansMul
          report "Fail in Mul test case "
          severity error;
          start <= '0';
          wait for 100 ns;
    end loop;
   report "TestDone";
   wait;
  end process;

  process
  begin
    clk <= '0';
    wait for 50 ns;
    clk <= '1';
    wait for 50 ns;
  end process;
end TestBencArch ;
