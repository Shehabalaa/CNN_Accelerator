LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;


ENTITY RowDecoder IS
  PORT(
      loadWindow, finishOneRead, clk: IN STD_LOGIC;
      decoderOut: OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
    );

END RowDecoder;

------------------------------------------------------------

-- Config Architecture

ARCHITECTURE RowDecoderArch OF RowDecoder IS

    SIGNAL resetCounter: STD_LOGIC;

    BEGIN
        resetCounter <= NOT loadWindow;

        decoderCounter: ENTITY work.Counter GENERIC MAP(3) PORT MAP(
            finishOneRead, resetCounter, clk, decoderOut
        );
        
END ARCHITECTURE;