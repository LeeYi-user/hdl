library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY INVERTER is
PORT(I1: IN bit;
		O1: OUT bit);
END INVERTER;

architecture Dataflow of INVERTER is
begin
	O1 <= not I1;
end Dataflow;
