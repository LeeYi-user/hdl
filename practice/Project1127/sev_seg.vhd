library ieee;
use ieee.std_logic_1164.all;

entity sev_seg is
    port(
        x: in std_logic_vector(3 downto 0);
        y: out std_logic_vector(6 downto 0)
    );
end sev_seg;

architecture a of sev_seg is
begin
    with x select
        y <= "1000000" when "0000",  -- 0 (顛倒後)
             "1111001" when "0001",  -- 1 (顛倒後)
             "0100100" when "0010",  -- 2 (顛倒後)
             "0110000" when "0011",  -- 3 (顛倒後)
             "0011001" when "0100",  -- 4 (顛倒後)
             "0010010" when "0101",  -- 5 (顛倒後)
             "0000010" when "0110",  -- 6 (顛倒後)
             "1111000" when "0111",  -- 7 (顛倒後)
             "0000000" when "1000",  -- 8 (顛倒後)
             "0010000" when "1001",  -- 9 (顛倒後)
             "0001000" when "1010",  -- A (顛倒後)
             "0000011" when "1011",  -- b (顛倒後)
             "1000110" when "1100",  -- C (顛倒後)
             "0100001" when "1101",  -- d (顛倒後)
             "0000110" when "1110",  -- E (顛倒後)
             "0001110" when "1111",  -- F (顛倒後)
				 "1111111" when others;
end a;
