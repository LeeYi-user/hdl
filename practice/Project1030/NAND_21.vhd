library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY NAND_21 is
PORT(A,B: IN bit;
		C: OUT bit);
END NAND_21;

architecture Dataflow of NAND_21 is
begin
	C <= A nand B;
end Dataflow;
