library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity binary_to_seven_segment is
    port(
        binary_in: in std_logic_vector(9 downto 0);
        key1: in std_logic;
        reset: in std_logic;
		  clk: in std_logic;
        seg0: out std_logic_vector(6 downto 0);
        seg1: out std_logic_vector(6 downto 0);
        seg2: out std_logic_vector(6 downto 0);
        seg3: out std_logic_vector(6 downto 0);
        seg4: out std_logic_vector(6 downto 0);
        seg5: out std_logic_vector(6 downto 0)
    );
end binary_to_seven_segment;

architecture arch of binary_to_seven_segment is
	 signal count: integer := 0;
    signal decimal_value: integer range 0 to 999999 := 0;
    signal stored_value: integer range 0 to 999999 := 0;
    signal digit0, digit1, digit2, digit3, digit4, digit5: std_logic_vector(3 downto 0);
begin
	 process(clk)
	 begin
		  count <= count + 1;
		  
		  if count > 100000 then
				count <= 100000;
		  end if;
	 end process;

    -- Process to handle key1 and update stored_value
    process(binary_in, key1, reset)
    begin
        if reset = '0' or count < 100000 then
            stored_value <= 0;
        elsif key1 = '0' then
            stored_value <= decimal_value;
        else
            decimal_value <= stored_value + to_integer(unsigned(binary_in));
        end if;
    end process;

    -- Extract individual decimal digits
    process(decimal_value)
    begin
        digit0 <= std_logic_vector(to_unsigned(decimal_value mod 10, 4));
        digit1 <= std_logic_vector(to_unsigned((decimal_value / 10) mod 10, 4));
        digit2 <= std_logic_vector(to_unsigned((decimal_value / 100) mod 10, 4));
        digit3 <= std_logic_vector(to_unsigned((decimal_value / 1000) mod 10, 4));
        digit4 <= std_logic_vector(to_unsigned((decimal_value / 10000) mod 10, 4));
        digit5 <= std_logic_vector(to_unsigned((decimal_value / 100000) mod 10, 4));
    end process;

    -- Instantiate sev_seg component for each digit
    sev_seg_inst0: entity work.sev_seg
        port map(
            x => digit0,
            y => seg0
        );

    sev_seg_inst1: entity work.sev_seg
        port map(
            x => digit1,
            y => seg1
        );

    sev_seg_inst2: entity work.sev_seg
        port map(
            x => digit2,
            y => seg2
        );

    sev_seg_inst3: entity work.sev_seg
        port map(
            x => digit3,
            y => seg3
        );

    sev_seg_inst4: entity work.sev_seg
        port map(
            x => digit4,
            y => seg4
        );

    sev_seg_inst5: entity work.sev_seg
        port map(
            x => digit5,
            y => seg5
        );

end arch;
