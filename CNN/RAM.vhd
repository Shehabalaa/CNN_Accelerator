library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.Numeric_Std.all;

Entity RAM is
    generic(
        addressSize:INTEGER :=13;
        wordSize:Integer:=16;
        internalBusSize: INTEGER := 16*5 ---
    );
    port(
        clk, rd, we, reset:IN STD_LOGIC;
        addressRead, addressWrite:IN std_logic_vector(addressSize-1 downto 0) ;
        dataIn:IN std_logic_vector(wordSize-1 downto 0) ;
        dataOut:OUT std_logic_vector(internalBusSize-1 downto 0);
        MFCReadOut, MFCWriteOut: OUT std_logic
    );
end RAM;

architecture RAMArch of RAM IS
type ram_type is array (0 to (2**addressSize)-1) of std_logic_vector(wordSize-1 downto 0);
constant zeros:std_logic_vector(wordSize-1 downto 0) :=(others =>'0'); 
signal ram : ram_type;

signal notClk: STD_LOGIC;

Signal currentCountRead, currentCountWrite: STD_LOGIC_VECTOR(1 downto 0);

SIGNAL MFCRead, MFCWrite, counterMFCReadEn, counterMFCWriteEn: STD_LOGIC;

begin

    --process(clk)
    --   begin
--
    --        IF clk'EVENT AND clk='0' then
    --            if ((rd = '1') and (we = '1') and  (reset = '0') and (addressRead = addressWrite)) then
    --                dataOut <= (others=>'0');
    --                MFCReadOut <= '1';
    --                MFCWriteOut <= '0';
    --            else
    --                dataOut <= (others=>'0');
    --                MFCReadOut <= '0';
    --                MFCWriteOut <= '1';
    --            end if;
    --        end if;
    --end PROCESS;



    MFCReadOut <= MFCRead;
    MFCWriteOut <= MFCWrite;
    process(clk, we, reset, addressRead, addressWrite)
        begin

        if reset='1' then
            ram<=(others=>zeros);
        ELSIF we='1' THEN
            IF clk'EVENT AND clk='0' AND currentCountWrite = "00" then
                ram(to_integer(unsigned(addressWrite))) <= datain;
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
    
    counterMFCRead: Entity work.Counter generic map(2) port map(
            counterMFCReadEn, reset, notClk, currentCountRead
        );

    MFCRead <= '1' when currentCountRead = "11"
    else '0';

    counterMFCWriteEn <= we OR MFCWrite;

    counterMFCWrite: Entity work.Counter generic map(2) port map(
            counterMFCWriteEn, reset, notClk, currentCountWrite
        );

    MFCWrite <= '1' when currentCountWrite = "11"
    else '0';

end architecture;    