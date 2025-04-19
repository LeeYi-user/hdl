library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY NAND_2 is
PORT(A,B: IN bit;
		C: OUT bit);
END NAND_2;

ARCHITECTURE structure OF NAND_2 IS
signal I:BIT;
	component AND_2
		port(I1, I2: in bit;
				O1: out bit);
	end component;
	component INVERTER
		port(I1 : in bit;
				O1: out bit);
	end component;
BEGIN
	Cell1: AND_2 port map(I1=>A, I2=>B, O1=>I);
	Cell2: INVERTER port map(I1=>I, O1=>C);
END structure;
