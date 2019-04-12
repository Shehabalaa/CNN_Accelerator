LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE IEEE.numeric_std.all;

ENTITY ModuloCounter IS 
	GENERIC(n: INTEGER := 3);
	PORT(
		modulator: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		en,rst,clk: IN STD_LOGIC;
		currentCount: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
	);

END ModuloCounter;


ARCHITECTURE ModuloCounterArch OF ModuloCounter IS
SIGNAL currentCountSignal, nextCount, zeros, muxedCount: STD_LOGIC_VECTOR(n-1 DOWNTO 0);
SIGNAL carryOut,sel: STD_LOGIC;
BEGIN
	counterReg: ENTITY work.Reg GENERIC MAP(n) PORT MAP(muxedCount, en, clk, rst, currentCountSignal);
	nBitAdder: ENTITY work.FullAdder GENERIC MAP(n) PORT MAP(currentCountSignal,zeros, '1', nextCount, carryOut);
	Mux2: ENTITY work.Mux2 GENERIC MAP(n) PORT MAP(nextCount,zeros,sel,muxedCount);
	currentCount <= currentCountSignal;
	zeros <= ( OTHERS => '0');

	sel <= '1' WHEN currentCountSignal = modulator
	ELSE '0';

END ARCHITECTURE;
	