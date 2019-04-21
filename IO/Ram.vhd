LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

ENTITY Ram IS

	Generic(addressBits: integer := 16; wordSize: integer :=80);

	PORT(
			clk : IN STD_LOGIC;
			we  : IN STD_LOGIC;
			reset : IN STD_LOGIC;
			address : IN  STD_LOGIC_VECTOR(addressBits - 1 DOWNTO 0);
			datain  : IN  STD_LOGIC_VECTOR(wordSize - 1 DOWNTO 0);
			dataout : OUT STD_LOGIC_VECTOR(wordSize - 1 DOWNTO 0);
			MFC: OUT std_logic
		);

END ENTITY Ram;

------------------------------------------------------------

ARCHITECTURE RamArch OF Ram IS

	TYPE RamType IS ARRAY(0 TO (2**addressBits) - 1) OF STD_LOGIC_VECTOR(wordSize - 1 DOWNTO 0);
	
	SIGNAL Ram : RamType ;

	
	SIGNAL counterEnable, notClk : STD_LOGIC;

	SIGNAL currentCount : STD_LOGIC_VECTOR(1 downto 0);
	
	BEGIN

		PROCESS(clk) IS
			BEGIN
				IF rising_edge(clk) THEN  
					IF we = '1' THEN
						Ram(TO_INTEGER(UNSIGNED(address))) <= datain;
					END IF;
				END IF;
		END PROCESS;

		dataout <= Ram(TO_INTEGER(UNSIGNED(address)));
		
		counterEnable <= we;
    notClk <= not clk;
    
    counterMFC: Entity work.Counter2 generic map(2) port map(
            counterEnable, reset, notClk, currentCount
        );

    MFC <= '1' when currentCount = "11"
    else '0';
END ARCHITECTURE;