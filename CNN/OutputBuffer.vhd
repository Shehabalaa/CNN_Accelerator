library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.Numeric_Std.all;
use work.Types.all;

Entity OutputBuffer is
    generic(
        internalBusSize:INTEGER:=16*5;
        numRegisters:INTEGER :=22*22;
        wordSize:INTEGER :=16;
        registerSelectorSize :INTEGER :=9
    );
    
    port(
        windowBus: INOUT std_logic_vector(internalBusSize-1 downto 0) ;
        AllRead:in std_logic;
        enableDecoder:in std_logic;      
        selectedRegisterMuxOutput:out std_logic_vector(wordSize-1 downto 0) ;
        clk:in std_logic;
        resetRegisters:in std_logic;
        tristateEnable:in std_logic;
        counterEnable: in std_logic
        --tristateOutput:out std_logic_vector(internalBusSize-1 downto 0) ;
        --negativeOrPositive:in std_logic
    );
end OutputBuffer;


architecture OutputBufferArch OF OutputBuffer is
    signal decoderOutput:std_logic_vector(2**registerSelectorSize-1 downto 0) ;
  --  signal andOutput:std_logic_vector(numRegisters-1 downto 0) ;
    signal registerOutputs:ARRAYOFREGS16(0 to 511) ;
    signal reluMuxOutuput:std_logic_vector(wordSize-1 downto 0) ;
    signal tempSelectedRegisterMuxOutput:std_logic_vector(wordSize-1 downto 0) ;
    signal tempTristateOutput:std_logic_vector(wordSize-1 downto 0) ;
    signal enableRegister:std_logic_vector(2**registerSelectorSize-1 downto 0) ;
    signal registerSelector: std_logic_vector(registerSelectorSize-1 downto 0) ;
    signal notClk: STD_LOGIC;
    constant zeros:std_logic_vector(15 downto 0) := (others =>'0');
   -- constant zeros2:std_logic_vector(80-16-1 downto 0) :=(others =>'0');  --80-16
    
   begin
        selectedRegisterMuxOutput <= tempSelectedRegisterMuxOutput;
        windowBus(wordSize-1 downto 0)<=tempTristateOutput;
        --windowBus(internalBusSize-1-wordSize downto 0)<=(others =>'0');
        
        decoderLabel:Entity work.Decoder generic map(registerSelectorSize) port map(
            T =>registerSelector,
            en =>enableDecoder,
            decoded=>decoderOutput
        );
        
       
        loop1: FOR i IN 0 TO (numRegisters -1)
        GENERATE
        x:Entity work.Reg generic map(wordSize) port map(
            D=>windowBus(wordSize-1 downto 0),--the input to the registers will be the left most word of the window bus
            en=>enableRegister(i),
            clk=>clk,
            rst=>resetRegisters,
            Q=>registerOutputs(i)
        );
        end generate;

        selectedRegisterMUX:Entity work.Mux generic map(512) port map(
            inputs=>registerOutputs,
            selectionLines=>registerSelector,
            output=>tempSelectedRegisterMuxOutput
        );

        reluMUX:Entity work.MUX2 generic map(wordSize) port map(
          A=>tempSelectedRegisterMuxOutput,
          B=>zeros,
          S=>tempSelectedRegisterMuxOutput(wordSize-1),
          C=> reluMuxOutuput  
        );

        tristateBuffer:Entity work.Tristate generic map(wordSize) port map(
            input=>reluMuxOutuput,
            en=>tristateEnable,
            output=>tempTristateOutput
        );
        
        process(registerSelector)
        begin
            loop1 : for i in 0 to 2**registerSelectorSize-1 loop
                enableRegister(i) <= decoderOutput(i) OR AllRead; 
            end loop ; -- loop
           
        end process;

        notClk <= not clk;

        counterSelector: Entity work.Counter generic map(registerSelectorSize) port map(
            counterEnable, resetRegisters, notClk, registerSelector
        );

    end architecture;