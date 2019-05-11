library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Reg_2 is
    port (
       D : IN std_logic_vector (1 DOWNTO 0) ;
       en : IN std_logic ;
       clk : IN std_logic ;
       rst : IN std_logic ;
       Q : OUT std_logic_vector (1 DOWNTO 0)) ;
 end Reg_2 ;
 
 architecture RegArch of Reg_2 is
    signal Q_1_EXMPLR, Q_0_EXMPLR, nx60, nx70, nx82, nx84, nx86, nx91, nx93: 
    std_logic ;
 
 begin
    Q(1) <= Q_1_EXMPLR ;
    Q(0) <= Q_0_EXMPLR ;
    reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx60, CLK=>clk, R=>
       rst);
    ix61 : nand02 port map ( Y=>nx60, A0=>nx82, A1=>nx86);
    ix83 : nand02 port map ( Y=>nx82, A0=>Q_0_EXMPLR, A1=>nx84);
    ix85 : inv01 port map ( Y=>nx84, A=>en);
    ix87 : nand02 port map ( Y=>nx86, A0=>D(0), A1=>en);
    reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx70, CLK=>clk, R=>
       rst);
    ix71 : nand02 port map ( Y=>nx70, A0=>nx91, A1=>nx93);
    ix92 : nand02 port map ( Y=>nx91, A0=>Q_1_EXMPLR, A1=>nx84);
    ix94 : nand02 port map ( Y=>nx93, A0=>D(1), A1=>en);
 end RegArch ;
 
 
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;
 entity NBitAdder_2 is
    port (
       a : IN std_logic_vector (1 DOWNTO 0) ;
       b : IN std_logic_vector (1 DOWNTO 0) ;
       carryIn : IN std_logic ;
       sum : OUT std_logic_vector (1 DOWNTO 0) ;
       carryOut : OUT std_logic) ;
 end NBitAdder_2 ;
 
 architecture NBitAdderArch of NBitAdder_2 is
    component FullAdder
       port (
          a : IN std_logic ;
          b : IN std_logic ;
          cin : IN std_logic ;
          s : OUT std_logic ;
          cout : OUT std_logic) ;
    end component ;
    signal temp_0: std_logic ;
 
 begin
    f0 : FullAdder port map ( a=>a(0), b=>b(0), cin=>carryIn, s=>sum(0), cout
       =>temp_0);
    loop1_1_fx : FullAdder port map ( a=>a(1), b=>b(1), cin=>temp_0, s=>
       sum(1), cout=>carryOut);
 end NBitAdderArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;
 ENTITY Counter_2 IS
          port (
             en : IN std_logic ;
             reset : IN std_logic ;
             clk : IN std_logic ;
             count : OUT std_logic_vector (1 DOWNTO 0));
    end ENTITY;

 architecture CounterArch of Counter_2 is
    component Reg_2
       port (
          D : IN std_logic_vector (1 DOWNTO 0) ;
          en : IN std_logic ;
          clk : IN std_logic ;
          rst : IN std_logic ;
          Q : OUT std_logic_vector (1 DOWNTO 0)) ;
    end component ;
    component NBitAdder_2
       port (
          a : IN std_logic_vector (1 DOWNTO 0) ;
          b : IN std_logic_vector (1 DOWNTO 0) ;
          carryIn : IN std_logic ;
          sum : OUT std_logic_vector (1 DOWNTO 0) ;
          carryOut : OUT std_logic) ;
    end component ;
    signal count_1_EXMPLR, count_0_EXMPLR, addedOne_1, addedOne_0, finalReset, 
       oneSignal_1, PWR, nx21, nx23: std_logic ;
    
    signal DANGLING : std_logic_vector (0 downto 0 );
 
 begin
    count(1) <= count_1_EXMPLR ;
    count(0) <= count_0_EXMPLR ;
    counterReg : Reg_2 port map ( D(1)=>addedOne_1, D(0)=>addedOne_0, en=>en, 
       clk=>clk, rst=>finalReset, Q(1)=>count_1_EXMPLR, Q(0)=>count_0_EXMPLR
    );
    nextCount : NBitAdder_2 port map ( a(1)=>count_1_EXMPLR, a(0)=>
       count_0_EXMPLR, b(1)=>oneSignal_1, b(0)=>oneSignal_1, carryIn=>PWR, 
       sum(1)=>addedOne_1, sum(0)=>addedOne_0, carryOut=>DANGLING(0));
    ix15 : fake_vcc port map ( Y=>PWR);
    ix13 : fake_gnd port map ( Y=>oneSignal_1);
    ix1 : nor02_2x port map ( Y=>finalReset, A0=>nx21, A1=>nx23);
    ix22 : inv01 port map ( Y=>nx21, A=>reset);
    ix24 : inv01 port map ( Y=>nx23, A=>clk);
 end CounterArch ;


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;
use IEEE.Numeric_Std.all;

entity CNNRam is
   port (
      clk : IN std_logic ;
      rd : IN std_logic ;
      we : IN std_logic ;
      reset : IN std_logic ;
      addressRead : IN std_logic_vector (11 DOWNTO 0) ;
      addressWrite : IN std_logic_vector (11 DOWNTO 0) ;
      dataIn : IN std_logic_vector (15 DOWNTO 0) ;
      dataOut : OUT std_logic_vector (39 DOWNTO 0) ;
      MFCReadOut : OUT std_logic ;
      MFCWriteOut : OUT std_logic) ;
end CNNRam ;

architecture RAMArch of CNNRam is

      component Counter_2
            port (
               en : IN std_logic ;
               reset : IN std_logic ;
               clk : IN std_logic ;
               count : OUT std_logic_vector (1 DOWNTO 0));
      end component;

      type ram_type is array (0 to (2**12)-1) of std_logic_vector(8-1 downto 0);
      constant zeros:std_logic_vector(8-1 downto 0) :=(others =>'0'); 
      signal ram : ram_type;
      
      signal notClk: STD_LOGIC;
      
      Signal currentCountRead, currentCountWrite: STD_LOGIC_VECTOR(1 downto 0);
      
      SIGNAL MFCRead, MFCWrite, counterMFCReadEn, counterMFCWriteEn: STD_LOGIC;

begin
       MFCReadOut <= MFCRead;
    MFCWriteOut <= MFCWrite;
    process(clk, we, reset, addressRead, addressWrite)
        begin

        if reset='1' then
            ram<=(others=>zeros);
        ELSIF we='1' THEN
            IF clk'EVENT AND clk='0' AND currentCountWrite = "00" then
                ram(to_integer(unsigned(addressWrite))) <= datain(15 downto 8);
                ram(to_integer(unsigned(addressWrite)) + 1) <= datain(7 downto 0);
            END IF;
        end if;
            
        
        dataOut <= ram(to_integer(unsigned(addressRead))+4) 
                    & ram(to_integer(unsigned(addressRead))+3)
                    & ram(to_integer(unsigned(addressRead))+2)
                    & ram(to_integer(unsigned(addressRead))+1)
                    & ram(to_integer(unsigned(addressRead)));
    
    end PROCESS;    

    notClk <= not clk;

    counterMFCReadEn <= rd OR MFCRead;
    
    counterMFCRead: Counter_2 port map(
            counterMFCReadEn, reset, notClk, currentCountRead
        );

    MFCRead <= '1' when currentCountRead = "11"
    else '0';

    counterMFCWriteEn <= we OR MFCWrite;

    counterMFCWrite: Counter_2 port map(
            counterMFCWriteEn, reset, notClk, currentCountWrite
        );

    MFCWrite <= '1' when currentCountWrite = "11"
    else '0';
end RAMArch ;