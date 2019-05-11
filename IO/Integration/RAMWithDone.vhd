library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.Numeric_Std.all;

Entity RAMWithDone is
    generic(
        addressSize:INTEGER :=13;
        wordSize:Integer:=16;
        internalBusSize: INTEGER := 16*5 ---
    );
    port(
        clk, rd, we,reset:IN STD_LOGIC;
        address:IN std_logic_vector(addressSize-1 downto 0) ;
        dataIn:IN std_logic_vector(wordSize-1 downto 0) ;
        dataOut:OUT std_logic_vector(internalBusSize-1 downto 0);
        MFC: OUT std_logic
    );
end RAMWithDone;

architecture RAMWithDoneArch of RAMWithDone IS
type ram_type is array (0 to (2**addressSize)-1) of std_logic_vector(wordSize-1 downto 0);
constant zeros:std_logic_vector(wordSize-1 downto 0) :=(others =>'0'); 
signal ram : ram_type;

signal counterEnable, notClk: STD_LOGIC;

Signal currentCount: STD_LOGIC_VECTOR(1 downto 0);

begin
    process(clk,we,reset,address)
        begin

        if reset='1' then
            ram<=(others=>zeros);
        ELSIF we='1' THEN
            IF clk'EVENT AND clk='0' AND currentCount = "00" then
                ram(to_integer(unsigned(address))) <= datain;
            END IF;
        end if;
            
        
        dataOut <= ram(to_integer(unsigned(address))+4) 
                    & ram(to_integer(unsigned(address))+3)
                    & ram(to_integer(unsigned(address))+2)
                    & ram(to_integer(unsigned(address))+1)
                    & ram(to_integer(unsigned(address)));

    end PROCESS;    
    
    counterEnable <= rd or we;
    notClk <= not clk;
    
    counterMFC: Entity work.Counter3 generic map(2) port map(
            counterEnable, reset, notClk, currentCount
        );

    MFC <= '1' when currentCount = "11"
    else '0';

end architecture;    