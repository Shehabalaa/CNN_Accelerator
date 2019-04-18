library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.Numeric_Std.all;
use work.Types.all;

Entity OutputBuffer is
    generic(
        windowBusSize:INTEGER:=16*5;
        weightsBusSize:INTEGER:=8*5;
        numRegisters:INTEGER :=22*22;
        windowSize:INTEGER :=16;
        filterSize:INTEGER :=8;
        registerSelectorSize :INTEGER :=9;
        filterDecimal: INTEGER := 6
    );
    
    port(
        windowBus: INOUT std_logic_vector(windowBusSize-1 downto 0);
        weightsBus: IN std_logic_vector(weightsBusSize-1 downto 0);
        AllRead:in std_logic;
        enableDecoder:in std_logic;      
        selectedRegisterMuxOutput:out std_logic_vector(windowSize-1 downto 0) ;
        clk:in std_logic;
        finishSlice : IN STD_LOGIC;
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
    signal inputRegisters:ARRAYOFREGS16(0 to 511) ;
    signal reluMuxOutuput:std_logic_vector(windowSize-1 downto 0) ;
    signal tempSelectedRegisterMuxOutput:std_logic_vector(windowSize-1 downto 0) ;
    signal tempTristateOutput:std_logic_vector(windowSize-1 downto 0) ;
    signal enableRegister:std_logic_vector(2**registerSelectorSize-1 downto 0) ;
    signal registerSelector: std_logic_vector(registerSelectorSize-1 downto 0) ;
    signal notClk: STD_LOGIC;
    SIGNAL resetCounter : STD_LOGIC;
    SIGNAL othersAllRead: std_logic_vector(2**registerSelectorSize-1  downto 0);
    SIGNAL weightsInputMux: std_logic_vector(windowSize-1 downto 0);
    SIGNAL zeros:std_logic_vector(windowSize-1 downto 0);
   -- constant zeros2:std_logic_vector(80-16-1 downto 0) :=(others =>'0');  --80-16
    
   begin
        selectedRegisterMuxOutput <= tempSelectedRegisterMuxOutput;
        windowBus(windowSize-1 downto 0)<=tempTristateOutput;
        zeros <= (others => '0');

        weightsInputMux(filterSize+1 DOWNTO filterSize-filterDecimal) <= weightsBus(filterSize-1 DOWNTO 0);
        weightsInputMux(filterSize-filterDecimal-1 DOWNTO 0) <= (others => '0');
        weightsInputMux(windowSize-1 DOWNTO filterSize+2) <= (others => weightsBus(filterSize-1));
        --windowBus(internalBusSize-1-wordSize downto 0)<=(others =>'0');
        
        decoderLabel:Entity work.Decoder generic map(registerSelectorSize) port map(
            T =>registerSelector,
            en =>enableDecoder,
            decoded=>decoderOutput
        );
        
       
        loop1: FOR i IN 0 TO (numRegisters -1)
        GENERATE

        y: ENTITY work.Mux2 GENERIC MAP(windowSize) PORT MAP(
            A=>windowBus(windowSize-1 DOWNTO 0),
            B=>weightsInputMux,
            S=>Allread,
            C=>inputRegisters(i)
        );

        x:Entity work.Reg generic map(windowSize) port map(
            D=>inputRegisters(i) ,--the input to the registers will be the left most word of the window bus
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

        reluMUX:Entity work.MUX2 generic map(windowSize) port map(
          A=>tempSelectedRegisterMuxOutput,
          B=>zeros,
          S=>tempSelectedRegisterMuxOutput(windowSize-1),
          C=> reluMuxOutuput  
        );

        tristateBuffer:Entity work.Tristate generic map(windowSize) port map(
            input=>reluMuxOutuput,
            en=>tristateEnable,
            output=>tempTristateOutput
        );
        -- mai momkn others=>all read wa b3den n3ml decoderoutput or all read
        
        -- process(registerSelector)
        -- begin
        --     loop1 : for i in 0 to 2**registerSelectorSize-1 loop
        --         enableRegister(i) <= decoderOutput(i) OR AllRead; 
        --     end loop ; -- loop
           
        -- end process;

        othersAllRead <= (others => AllRead);

        enableRegister <= decoderOutput OR othersAllRead;

        notClk <= not clk;

        resetCounter <= finishSlice OR resetRegisters;

        counterSelector: Entity work.Counter generic map(registerSelectorSize) port map(
            counterEnable, resetCounter, notClk, registerSelector
        );

    end architecture;