LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

--IO Interface entity is responsible for reading data from CPU and writing the final result
ENTITY IOInterface IS
  GENERIC (chipInputSize: integer :=16;
           chipOutputSize: integer :=4);
  PORT(
      Din: in std_logic_vector(chipInputSize - 1 DOWNTO 0);
      INTR, clk, rst: in std_logic;
      Q: out std_logic_vector(chipInputSize - 1 DOWNTO 0);
      result: out std_logic_vector(chipOutputSize - 1 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE IOInterfaceArch OF IOInterface IS
BEGIN
  DataReg: ENTITY work.Reg GENERIC MAP(chipInputSize) PORT MAP(Din, INTR, clk, rst, Q);
END ARCHITECTURE;