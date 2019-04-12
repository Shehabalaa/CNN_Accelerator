--one register to hold the step to increase
--multistep counter  to hold wirte address
--
--when receiving        
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

Entity WriteDMA is
    GENERIC(
    addressSize: INTEGER:=16;
    internalBusSize: INTEGER:=16
    );
    port(
        clk:in std_logic;
        -- Write logic interface
        writeBaseAddress:IN std_logic_vector(addressSize-1 downto 0) ;
        writeStep:IN std_logic_vector(addressSize-1 downto 0);
        writeToRam:IN std_logic;
        counter:In std_logic_vector(maxImageSize-1 downto 0) ;
        initCounter,initAddress:IN std_logic;
        
        internalBus:IN STD_LOGIC_VECTOR(internalBusSize-1 DOWNTO 0);
        --ram interface
        ramWrite:out std_logic;
        ramDataOutBus:out STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
        ramWriteAddress:out std_logic_vector(addressSize-1 downto 0) ;
        MFC:in std_logic;

        writeComplete:out std_logic;
        writeCompleteOne:out std_logic
    );
END WriteDMA;

architecture WriteDMAArch of WriteDMA is
    signal toBeAdded :std_logic_vector(addressSize-1 downto 0) ;  
    signal currentCount:std_logic_vector(maxImageSize-1 downto 0) ;
    constant zeros:std_logic_vector(maxImageSize-1 downto 0) :=(others => '0');
    constant ones:std_logic_vector(maxImageSize-1 downto 0) :=(0 => '1', others => '0');
    signal enableCounter:std_logic; 
    begin
        writeStepRegister:Entity work.Reg Generic Map(addressSize) PORT MAP(writeStep,'1',initCounter,'0',tobeAdded);
        writeAddressRegister:Entity work.MultiStepCounter  Generic map(addressSize) port map(writeBaseAddress,tobeAdded,'0',clk,initAddress,MFC,ramWriteAddress);
        writecounter:Entity work.DownCounter Generic map(maxImageSize) port map(counter,enableCounter,clk,initCounter,currentCount); 
        
        enableCounter <= MFC or initCounter;
        writeCompleteOne <= MFC AND writeToRam;
        process(clk, MFC,writeToRam,currentCount,internalBus,initCounter, initAddress)
        begin
            if MFC='1' AND writeToRam = '1' AND ( (clk = '0' AND currentCount = ones) OR (clk = '1' AND currentCount = zeros))  THEN
                writeComplete <= '1';
            else 
                writeComplete <= '0';
        end if;
        if writeToRam='1' then
            ramWrite<='1';
            ramDataOutBus<=internalBus;
        else
            ramWrite<='0';
        end if;
    end process;
end architecture;