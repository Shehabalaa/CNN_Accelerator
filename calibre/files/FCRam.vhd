library IEEE;
use IEEE.STD_LOGIC_1164.all;

Entity FCRam is
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
end FCRam;

architecture FCRamArch of FCRam IS
begin
end architecture; 
