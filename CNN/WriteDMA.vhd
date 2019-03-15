--one register to hold the step to increase
--multistep counter  to hold wirte address
--
--when receiving        
library IEEE;
use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
    use work.constants.all;
    Entity WriteDMA is
        port(
            clk:in std_logic;
            writeBaseAddress:IN std_logic_vector(addressSize-1 downto 0) ;
            writeStep:IN std_logic_vector(maxImageSize-1 downto 0);
            writeToRam:IN std_logic;
            counter:In std_logic_vector(maxImageSize-1 downto 0) ;
            init:IN std_logic;
            internalBus:INOUT STD_LOGIC_VECTOR(internalBusSize-1 DOWNTO 0);
            ramWrite:out std_logic;
            writeComplete:out std_logic;
            ramDataInBus:out STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
            ramWriteAddress:out std_logic_vector(addressSize-1 downto 0) ;
            MFC:in std_logic
        );
        end WriteDMA;
    architecture WriteDMAArch of WriteDMA is
        signal toBeAdded :std_logic_vector(15 downto 0) ;  
        signal currentCount:std_logic_vector(maxImageSize-1 downto 0) ;
         constant zeros:std_logic_vector(maxImageSize-1 downto 0) :=(others=>'0');  
        signal enableCounter:std_logic; 
        begin
            writeStepRegister:Entity work.Reg Generic Map(16) PORT MAP(writeStep,'1',init,'0',tobeAdded);
            writeAddressRegister:Entity work.MultiStepCounter  Generic map(addressSize) port map(writeBaseAddress,tobeAdded,'0',clk,init,MFC,ramWriteAddress);
            writecounter:Entity work.DownCounter Generic map(maxImageSize) port map(counter,enableCounter,clk,init,currentCount); 
           
            process(MFC,writeToRam,currentCount,internalBus)
            begin
                if currentCount=zeros and  MFC='1' then
                    writeComplete<='1';
                else 
                    writeComplete<='0';
            end if;        
            if writeToRam='1' then
                ramWrite<='1';
                ramDataInBus<=internalBus;
            else 
                ramWrite<='0';    
            end if;
            enableCounter<=MFC or init;
            end process;
            end architecture;            

                
                   