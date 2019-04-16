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
  test_c : entity work.Alus8x16 generic map(1) port map (q(0)=>q,m(0)=>m,f(0)=>fAccum,clk=>clk,start=>start,rst=>rst,done=>done,working=>working); --modified
  process
    variable op1Tests :tests8bits;
    variable op2Tests,answersAccum :tests16bits;
  begin
    --q <= (others=>'0');
    --m <= (others=>'0');
    start <= '0';
    rst<='1';
    wait for 100 ns;
    rst<='0';
    wait for 100 ns;
    op1Tests := (x"60", x"56", x"48", x"ff", x"8e", x"92", x"5b", x"dc", x"6d", x"4d", x"ae", x"ef", x"3a", x"98", x"25", x"08", x"12", x"44", x"06", x"13", x"b6", x"3c", x"36", x"bd", x"86", x"95", x"6c", x"87", x"a4", x"61", x"e2", x"6c", x"e5", x"3d", x"14", x"d4", x"db", x"61", x"2c", x"07", x"45", x"8d", x"72", x"ed", x"3d", x"fe", x"d6", x"75", x"da", x"d3", x"79", x"0e", x"ba", x"7b", x"c5", x"3d", x"d2", x"88", x"cd", x"68", x"fe", x"21", x"18", x"f2", x"ae", x"90", x"e8", x"bb", x"35", x"6e", x"84", x"72", x"b6", x"ca", x"ae", x"a0", x"f7", x"a9", x"e1", x"fb", x"ae", x"11", x"f5", x"c7", x"b5", x"5b", x"cc", x"ac", x"50", x"af", x"de", x"40", x"32", x"1d", x"fa", x"ce", x"04", x"14", x"30", x"0d", x"c7", x"b5", x"7d", x"48", x"08", x"d5", x"6b", x"73", x"f2", x"b7", x"63", x"7d", x"5a", x"28", x"8b", x"3a", x"44", x"da", x"41", x"5b", x"03", x"6b", x"ca", x"5f", x"d6", x"eb", x"00", x"bb", x"4f", x"df", x"f6", x"30", x"04", x"11", x"c4", x"1d", x"d1", x"93", x"54", x"88", x"52", x"34", x"d2", x"bb", x"bb", x"70", x"c7", x"f4", x"5f", x"3f", x"8d", x"a8", x"cd", x"a9", x"1d", x"ad", x"02", x"c5", x"bf", x"cb", x"84", x"36", x"f5", x"29", x"95", x"56", x"44", x"36", x"a2", x"79", x"2a", x"c7", x"3c", x"f1", x"7d", x"f1", x"cd", x"b2", x"ec", x"a9", x"d9", x"32", x"a2", x"20", x"4e", x"a0", x"c0", x"7d", x"c3", x"7e", x"d1", x"69", x"ec", x"c9", x"0f", x"b0", x"de", x"03", x"c7", x"dd");
    op2Tests := (x"f4cf", x"b1fe", x"2ed9", x"d065", x"b305", x"7709", x"1415", x"8438", x"1336", x"6bfb", x"61da", x"4d59", x"140e", x"98a3", x"cfdb", x"e3ad", x"2ff8", x"72f4", x"19fb", x"06b0", x"6bf4", x"2b87", x"d9ff", x"0861", x"bd9f", x"b5f6", x"9d27", x"c760", x"7417", x"8200", x"82e3", x"44d0", x"f424", x"38f6", x"d211", x"7be0", x"9eba", x"e455", x"c6ea", x"eff3", x"6500", x"0c5c", x"b65b", x"64d2", x"2e40", x"160e", x"6b92", x"dcc8", x"803e", x"35b9", x"9127", x"5343", x"f068", x"1a83", x"6467", x"ae2f", x"b368", x"47f8", x"32a2", x"8b47", x"f3cf", x"08cd", x"3ec7", x"1950", x"6a89", x"8297", x"ac24", x"b453", x"1202", x"8256", x"b9c9", x"c116", x"952a", x"51fd", x"baf4", x"c478", x"4cda", x"7625", x"3c5b", x"882c", x"ea56", x"38c8", x"1273", x"c2a8", x"b452", x"4fb2", x"07c3", x"9a07", x"ee54", x"9478", x"5020", x"cd32", x"cadf", x"5748", x"46f9", x"f3fb", x"7b2d", x"efaa", x"f8f0", x"d96d", x"519d", x"90a0", x"898f", x"8aa8", x"019a", x"2322", x"4bc1", x"81de", x"e0f5", x"7a19", x"4776", x"4290", x"ff88", x"4c92", x"4222", x"e48d", x"edb0", x"35f8", x"2611", x"5cf5", x"7151", x"7de5", x"c227", x"00f9", x"eb93", x"0daa", x"f749", x"c21b", x"ff25", x"39dc", x"3283", x"11d1", x"ffa0", x"c04e", x"ef00", x"e330", x"62d8", x"40b6", x"e717", x"c22d", x"daab", x"46d6", x"f22c", x"9d36", x"e33c", x"960b", x"9fdb", x"7530", x"2086", x"0e2c", x"f23a", x"f8da", x"f460", x"f1af", x"635f", x"1a8d", x"4936", x"c075", x"5819", x"92f0", x"2dba", x"95a9", x"4ee0", x"ddcf", x"c6d2", x"5b4c", x"932c", x"0721", x"dea3", x"2039", x"4165", x"f475", x"99f8", x"708a", x"96e2", x"7a95", x"c954", x"9294", x"56b9", x"369c", x"8905", x"809a", x"1a44", x"e94c", x"ee8d", x"452c", x"f65d", x"c2a1", x"e562", x"e961", x"d62b", x"2997", x"6aab", x"4ae5", x"44fd", x"0b5f", x"d704", x"7c48", x"5e20", x"a2ad");
    answersAccum := (x"ef36", x"8663", x"bb17", x"bbd5", x"44f4", x"785c", x"94e9", x"da89", x"fb40", x"7d29", x"ffc9", x"eb3d", x"fd69", x"a560", x"898a", x"85ff", x"937c", x"0d9f", x"100e", x"120a", x"9537", x"be05", x"9df4", x"952e", x"13b6", x"8f7e", x"e8af", x"53bd", x"acdb", x"ede3", x"2888", x"9ca7", x"a1a7", x"d7f1", x"c996", x"746c", x"aca8", x"82b8", x"5b78", x"59b6", x"c69a", x"b064", x"2d36", x"0f47", x"3b5c", x"3aab", x"f413", x"b3b0", x"ff8b", x"d9c4", x"0831", x"1a67", x"2b75", x"5e68", x"01d9", x"b3dd", x"eaea", x"63f9", x"3b9f", x"7df2", x"7e53", x"82dc", x"9a66", x"94dc", x"0c5c", x"e7d3", x"0745", x"58db", x"67c4", x"8fc7", x"17d1", x"a7c0", x"2347", x"de19", x"3690", x"8fdc", x"850d", x"e472", x"c735", x"d091", x"ec52", x"fb67", x"f83b", x"2edd", x"878c", x"f8dd", x"f28e", x"7864", x"624d", x"ea65", x"bfd4", x"8d06", x"6384", x"8b10", x"8468", x"8dcb", x"957d", x"9062", x"8b16", x"8340", x"3a90", x"bd14", x"d5bf", x"51bc", x"51ef", x"3a54", x"b8fa", x"d654", x"dd1e", x"51d9", x"c063", x"4264", x"41bb", x"7196", x"f8af", x"dfce", x"cc59", x"ac4d", x"d2f6", x"5722", x"5c71", x"2eeb", x"631a", x"648b", x"71f2", x"6d76", x"6d76", x"b030", x"af21", x"914b", x"8966", x"96c2", x"96bc", x"85d0", x"95c0", x"88b1", x"401a", x"d1e4", x"b132", x"251d", x"f548", x"2ed5", x"38c5", x"a346", x"c249", x"08dc", x"5e7c", x"4883", x"78c9", x"86bc", x"9f7b", x"a94f", x"b292", x"c608", x"f30f", x"d0a0", x"d2e9", x"0d7d", x"b403", x"0e54", x"b5bb", x"5c01", x"4e72", x"388a", x"9822", x"12d0", x"9f2e", x"a531", x"d631", x"131c", x"3e06", x"484d", x"e8a5", x"ce44", x"00f5", x"e43a", x"0fcb", x"9526", x"7a0c", x"2fcf", x"784f", x"14c7", x"ee33", x"e2d9", x"cd94", x"65d2", x"6f75", x"f797", x"10f5", x"e46b", x"0323", x"475e", x"2608", x"e5ab", x"f5d6", x"e79f", x"fd64", x"0337", x"af62", x"e26b");
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
    clk <= '1';
    wait for 50 ns;
    clk <= '0';
    wait for 50 ns;
  end process;
end TestBenchArch;
