library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY NAND_22 is
PORT(A,B: IN bit;
		C: OUT bit);
END NAND_22;

architecture behavior of NAND_22 is
begin
process (A,B)
begin
	if (A='1') and (B='1') then
		C <= '0';
	else C <= '1';
	end if;
end process;
end behavior;
