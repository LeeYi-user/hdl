library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY AND_2 is
PORT(I1,I2: IN bit;
		O1: OUT bit);
END AND_2;

architecture Dataflow of AND_2 is
begin
	O1 <= I1 and I2;
end Dataflow;
