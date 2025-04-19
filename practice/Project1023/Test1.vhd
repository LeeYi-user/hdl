library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Test1 is
	port(a, b: in std_logic;
			Y: out std_logic);
end Test1;

architecture dataflow of Test1 is
begin
	Y <= a and b;
end dataflow;
