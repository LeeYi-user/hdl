library ieee;
use ieee.std_logic_1164.all;

entity TopModule is
    generic (
        n: integer range 0 to 999 := 168  -- 設定計數範圍
    );
    port (
        CK: in std_logic;  -- 時鐘訊號輸入
        Y2, Y1, Y0: out std_logic_vector(6 downto 0)  -- 三個七段顯示器輸出
    );
end TopModule;

architecture Behavioral of TopModule is

    -- 宣告元件 BCDCounter
    component BCDCounter is
        generic (n: integer range 0 to 999 := 168);
        port (
            CK: in std_logic;
            Y2, Y1, Y0: out std_logic_vector(3 downto 0)
        );
    end component;

    -- 宣告元件 sev_seg
    component sev_seg is
        port (
            x: in std_logic_vector(3 downto 0);
            y: out std_logic_vector(6 downto 0)
        );
    end component;

    -- 訊號連接 BCD 計數器與七段顯示器
    signal BCD_Y2, BCD_Y1, BCD_Y0: std_logic_vector(3 downto 0);

begin

    -- 實例化 BCDCounter
    U1: BCDCounter
        generic map (n => n)
        port map (
            CK => CK,
            Y2 => BCD_Y2,
            Y1 => BCD_Y1,
            Y0 => BCD_Y0
        );

    -- 實例化第一個 sev_seg，用於顯示十位數
    U2: sev_seg
        port map (
            x => BCD_Y2,
            y => Y2
        );

    -- 實例化第二個 sev_seg，用於顯示個位數
    U3: sev_seg
        port map (
            x => BCD_Y1,
            y => Y1
        );

    -- 實例化第三個 sev_seg，用於顯示百位數
    U4: sev_seg
        port map (
            x => BCD_Y0,
            y => Y0
        );

end Behavioral;
