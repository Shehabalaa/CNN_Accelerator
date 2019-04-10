library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TestAlus is
end TestAlus;

architecture TestBenchArch of TestAlus is
  type tests8bits is array (199 downto 0) of std_logic_vector(7  downto 0);
  type tests16bits is array (199 downto 0) of std_logic_vector(15  downto 0);
  signal clk,start,done,rst,working : std_logic;
  signal q :std_logic_vector(7  downto 0);
  signal m :std_logic_vector(15  downto 0);
  signal fAccum ,ansAccum:std_logic_vector(15 downto 0);
begin
  --test_c : entity work.BoothMul generic map(16) port map (m,r,f,clk,start,done); --normal booth
  test_c : entity work.Alus8x16 generic map(1) port map (q(0)=>q,m(0)=>m,f(0)=>fAccum,clk=>clk,start=>start,rst=>rst,done=>done,working=>working); --modified
  process
    variable op1Tests :tests8bits;
    variable op2Tests,answersAccum :tests16bits;
  begin
    rst<='1';
    wait for 10 ns;
    rst<='0';
    wait for 100 ns;
    op1Tests := (x"e6", x"f4", x"2e", x"00", x"20", x"09", x"d2", x"09", x"ce", x"da", x"00", x"d2", x"f2", x"13", x"e9", x"fe", x"3e", x"e6", x"c8", x"39", x"26", x"06", x"3f", x"d4", x"c4", x"3f", x"2a", x"3c", x"27", x"12", x"ec", x"df", x"30", x"0f", x"ee", x"f0", x"20", x"1c", x"19", x"df", x"d4", x"40", x"24", x"08", x"d8", x"16", x"d8", x"1a", x"e6", x"3d", x"0a", x"c1", x"df", x"40", x"1f", x"f9", x"da", x"e7", x"ea", x"c3", x"2a", x"c7", x"34", x"dd", x"22", x"23", x"cc", x"c7", x"dd", x"39", x"3f", x"2f", x"0a", x"c2", x"03", x"22", x"08", x"08", x"30", x"39", x"e6", x"c8", x"32", x"ca", x"cf", x"e7", x"08", x"f0", x"2a", x"c4", x"cc", x"13", x"35", x"d4", x"dd", x"c2", x"33", x"ef", x"22", x"37", x"e1", x"df", x"34", x"c7", x"cb", x"ec", x"ca", x"2f", x"f8", x"25", x"f6", x"d8", x"0c", x"eb", x"0e", x"d7", x"1b", x"24", x"fb", x"ce", x"35", x"d5", x"fd", x"34", x"e1", x"ea", x"19", x"2b", x"0b", x"db", x"12", x"38", x"17", x"cb", x"dc", x"cf", x"31", x"15", x"2f", x"03", x"cf", x"ea", x"38", x"e5", x"02", x"03", x"fb", x"c7", x"21", x"22", x"19", x"de", x"c8", x"e7", x"15", x"19", x"f4", x"1b", x"c8", x"35", x"ec", x"30", x"e3", x"3c", x"07", x"f7", x"e6", x"40", x"c1", x"40", x"10", x"14", x"07", x"2e", x"0d", x"d7", x"df", x"f6", x"cb", x"ee", x"2c", x"02", x"2c", x"ea", x"0b", x"2e", x"c5", x"f6", x"39", x"ee", x"40", x"28", x"3f", x"3e", x"07", x"1c", x"d7", x"3b", x"df", x"c6");
    op2Tests := (x"7f35", x"c501", x"f65a", x"88c2", x"75cf", x"5877", x"e77e", x"dfb7", x"2449", x"82c6", x"8cb6", x"1c03", x"3537", x"f129", x"f33c", x"f795", x"ee12", x"3743", x"9761", x"6b0f", x"85e4", x"5273", x"e5a4", x"e84f", x"01d4", x"8cbe", x"9b3f", x"ffd3", x"2211", x"a28a", x"7e2d", x"3a70", x"da80", x"ef11", x"e147", x"25b5", x"8e0a", x"2d35", x"52d6", x"0e6f", x"2f58", x"f9df", x"82e0", x"8d55", x"a41d", x"7eae", x"1f7a", x"6cc8", x"0452", x"8e1e", x"a0d6", x"bab2", x"1d63", x"d83f", x"be3e", x"b366", x"9689", x"8748", x"1ee5", x"c45e", x"465e", x"7685", x"24de", x"0966", x"75bb", x"5c6f", x"4e9f", x"b296", x"5284", x"b7f2", x"bb94", x"3dc9", x"a83d", x"936c", x"0302", x"0f82", x"bc94", x"f527", x"88a4", x"46b8", x"5144", x"5e64", x"92f5", x"e73e", x"4fda", x"d0f0", x"4c1c", x"b4c7", x"b84e", x"72c9", x"c2df", x"505a", x"9987", x"8222", x"cfe0", x"ba05", x"c009", x"eda2", x"99be", x"2c41", x"1a1c", x"26d9", x"a687", x"ef9b", x"8f50", x"8ef2", x"06e7", x"d31e", x"e60d", x"5ee8", x"5b3b", x"01b7", x"734e", x"006f", x"9f98", x"00e3", x"841e", x"b36b", x"12ba", x"2cbd", x"aac2", x"8cdb", x"f5a7", x"86c9", x"fd0b", x"bb40", x"0841", x"8bf3", x"d50e", x"6625", x"e895", x"5fd4", x"70f2", x"550b", x"1853", x"0280", x"8572", x"ceef", x"06e3", x"74c1", x"6d7d", x"4717", x"b8fa", x"a548", x"7c73", x"8aca", x"fb9b", x"0009", x"1e51", x"2642", x"9949", x"b3a9", x"bfad", x"824f", x"fd37", x"05e8", x"0c6a", x"c56e", x"1fba", x"bed1", x"5a45", x"5277", x"bd49", x"13e3", x"be33", x"a5a1", x"6b58", x"dfe2", x"30aa", x"cd0d", x"9822", x"8af0", x"c4a6", x"1b97", x"5974", x"eac5", x"f9ea", x"7e7c", x"f465", x"6faa", x"3378", x"aeab", x"cc94", x"b8a9", x"01d9", x"4f1e", x"badc", x"7e37", x"19e5", x"b59b", x"3db2", x"8d2a", x"251e", x"1ef1", x"6e74", x"aa8d", x"3ed1", x"3463", x"09d1", x"db34");
    answersAccum := (x"cc52", x"d761", x"d071", x"d071", x"0b58", x"17c8", x"2965", x"24da", x"0880", x"52da", x"52da", x"3eb7", x"3312", x"2eaa", x"3340", x"3383", x"2224", x"0bb0", x"673b", x"c694", x"7e13", x"85cd", x"6bda", x"7c23", x"7a6c", x"08f7", x"c6d8", x"c6ad", x"db6f", x"c125", x"99b6", x"7b94", x"5f74", x"5b7b", x"641f", x"5ab1", x"21b6", x"357d", x"55d8", x"4e66", x"2dd9", x"27b8", x"e156", x"d300", x"0c6d", x"37f8", x"244b", x"507c", x"4eba", x"e22e", x"d34f", x"1787", x"085f", x"e09e", x"c0c4", x"c924", x"07c2", x"36e9", x"2c4a", x"6520", x"934d", x"29be", x"47b2", x"428e", x"8119", x"b3a5", x"73c3", x"b8b5", x"8b94", x"4b67", x"080c", x"356b", x"27b4", x"90e3", x"9107", x"9944", x"90d6", x"8f7a", x"35f5", x"74f0", x"53ec", x"0154", x"ac23", x"c106", x"83e3", x"9645", x"9fc8", x"b296", x"8389", x"17ec", x"4996", x"6170", x"0c93", x"631b", x"7d6c", x"c137", x"8e3e", x"931e", x"5cca", x"82d1", x"762b", x"6223", x"1970", x"2809", x"855a", x"a8ae", x"a2db", x"81e5", x"8523", x"bc01", x"adbf", x"acac", x"c24a", x"c225", x"ad0e", x"ac7c", x"7838", x"4d24", x"4bad", x"28b9", x"e221", x"2f7d", x"2ff9", x"cd7c", x"ceea", x"e68c", x"e9c5", x"9bcc", x"946a", x"595c", x"52c5", x"a69e", x"cf34", x"88c6", x"7b17", x"792d", x"1b58", x"0b3e", x"104c", x"15c5", x"c1f1", x"a981", x"6b5b", x"91a0", x"9583", x"9004", x"905b", x"9052", x"9ff3", x"b446", x"8c26", x"b4b4", x"ecfc", x"1e15", x"1d2b", x"1f79", x"1d25", x"046f", x"e8ac", x"b2b1", x"967b", x"d454", x"f28e", x"0532", x"fdff", x"0ab4", x"df18", x"befa", x"8f12", x"5c1f", x"4227", x"1d92", x"1714", x"2ae8", x"3d13", x"4aac", x"4dcf", x"3a0b", x"43a7", x"243f", x"47a1", x"4516", x"21bb", x"3a40", x"3a91", x"736e", x"b32b", x"9f72", x"b681", x"cb6d", x"091f", x"c159", x"e5e2", x"03db", x"0fef", x"ea8c", x"c24e", x"f299", x"ed89", x"0ee1");
    l1: for i in 199 downto 0 loop
          q <= op1Tests(i);
          m <= op2Tests(i);
          ansAccum <= answersAccum(i);
          start <= '1';
          wait for 400 ns; -- modified
          assert fAccum = ansAccum
          report "Fail in Accum test case "
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
end TestBenchArch;
