-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/27/2024 11:00:42"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TopModule IS
    PORT (
	CK : IN std_logic;
	SEG : BUFFER std_logic_vector(6 DOWNTO 0);
	DIGIT_SELECT : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END TopModule;

-- Design Ports Information
-- SEG[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_SELECT[0]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_SELECT[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_SELECT[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TopModule IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CK : std_logic;
SIGNAL ww_SEG : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DIGIT_SELECT : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \SEG[0]~output_o\ : std_logic;
SIGNAL \SEG[1]~output_o\ : std_logic;
SIGNAL \SEG[2]~output_o\ : std_logic;
SIGNAL \SEG[3]~output_o\ : std_logic;
SIGNAL \SEG[4]~output_o\ : std_logic;
SIGNAL \SEG[5]~output_o\ : std_logic;
SIGNAL \SEG[6]~output_o\ : std_logic;
SIGNAL \DIGIT_SELECT[0]~output_o\ : std_logic;
SIGNAL \DIGIT_SELECT[1]~output_o\ : std_logic;
SIGNAL \DIGIT_SELECT[2]~output_o\ : std_logic;
SIGNAL \CK~input_o\ : std_logic;
SIGNAL \U1|BCDCount:Digit0[0]~0_combout\ : std_logic;
SIGNAL \U1|BCDCount:Digit0[0]~q\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|BCDCount:Digit0[2]~q\ : std_logic;
SIGNAL \U1|Digit0~1_combout\ : std_logic;
SIGNAL \U1|BCDCount:Digit0[3]~q\ : std_logic;
SIGNAL \U1|Digit0~0_combout\ : std_logic;
SIGNAL \U1|BCDCount:Digit0[1]~q\ : std_logic;
SIGNAL \U2|Mux6~0_combout\ : std_logic;
SIGNAL \U2|Mux5~0_combout\ : std_logic;
SIGNAL \U2|Mux4~0_combout\ : std_logic;
SIGNAL \U2|Mux3~0_combout\ : std_logic;
SIGNAL \U2|Mux2~0_combout\ : std_logic;
SIGNAL \U2|Mux1~0_combout\ : std_logic;
SIGNAL \U2|Mux0~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux5~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CK <= CK;
SEG <= ww_SEG;
DIGIT_SELECT <= ww_DIGIT_SELECT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\U2|ALT_INV_Mux0~0_combout\ <= NOT \U2|Mux0~0_combout\;
\U2|ALT_INV_Mux1~0_combout\ <= NOT \U2|Mux1~0_combout\;
\U2|ALT_INV_Mux2~0_combout\ <= NOT \U2|Mux2~0_combout\;
\U2|ALT_INV_Mux3~0_combout\ <= NOT \U2|Mux3~0_combout\;
\U2|ALT_INV_Mux4~0_combout\ <= NOT \U2|Mux4~0_combout\;
\U2|ALT_INV_Mux5~0_combout\ <= NOT \U2|Mux5~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N16
\SEG[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEG[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\SEG[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEG[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\SEG[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEG[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\SEG[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\SEG[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEG[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\SEG[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEG[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\SEG[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEG[6]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\DIGIT_SELECT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DIGIT_SELECT[0]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\DIGIT_SELECT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIGIT_SELECT[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\DIGIT_SELECT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIGIT_SELECT[2]~output_o\);

-- Location: IOIBUF_X51_Y54_N29
\CK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CK,
	o => \CK~input_o\);

-- Location: LCCOMB_X52_Y53_N24
\U1|BCDCount:Digit0[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|BCDCount:Digit0[0]~0_combout\ = !\U1|BCDCount:Digit0[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|BCDCount:Digit0[0]~q\,
	combout => \U1|BCDCount:Digit0[0]~0_combout\);

-- Location: FF_X52_Y53_N25
\U1|BCDCount:Digit0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \U1|BCDCount:Digit0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|BCDCount:Digit0[0]~q\);

-- Location: LCCOMB_X52_Y53_N28
\U1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|BCDCount:Digit0[2]~q\ $ (((\U1|BCDCount:Digit0[1]~q\ & \U1|BCDCount:Digit0[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|BCDCount:Digit0[1]~q\,
	datac => \U1|BCDCount:Digit0[2]~q\,
	datad => \U1|BCDCount:Digit0[0]~q\,
	combout => \U1|Add0~0_combout\);

-- Location: FF_X52_Y53_N29
\U1|BCDCount:Digit0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \U1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|BCDCount:Digit0[2]~q\);

-- Location: LCCOMB_X52_Y53_N10
\U1|Digit0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Digit0~1_combout\ = (\U1|BCDCount:Digit0[1]~q\ & (\U1|BCDCount:Digit0[3]~q\ $ (((\U1|BCDCount:Digit0[0]~q\ & \U1|BCDCount:Digit0[2]~q\))))) # (!\U1|BCDCount:Digit0[1]~q\ & (\U1|BCDCount:Digit0[3]~q\ & ((\U1|BCDCount:Digit0[2]~q\) # 
-- (!\U1|BCDCount:Digit0[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|BCDCount:Digit0[1]~q\,
	datab => \U1|BCDCount:Digit0[0]~q\,
	datac => \U1|BCDCount:Digit0[3]~q\,
	datad => \U1|BCDCount:Digit0[2]~q\,
	combout => \U1|Digit0~1_combout\);

-- Location: FF_X52_Y53_N11
\U1|BCDCount:Digit0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \U1|Digit0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|BCDCount:Digit0[3]~q\);

-- Location: LCCOMB_X52_Y53_N6
\U1|Digit0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Digit0~0_combout\ = (\U1|BCDCount:Digit0[1]~q\ & (((!\U1|BCDCount:Digit0[0]~q\)))) # (!\U1|BCDCount:Digit0[1]~q\ & (\U1|BCDCount:Digit0[0]~q\ & ((\U1|BCDCount:Digit0[2]~q\) # (!\U1|BCDCount:Digit0[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|BCDCount:Digit0[3]~q\,
	datab => \U1|BCDCount:Digit0[2]~q\,
	datac => \U1|BCDCount:Digit0[1]~q\,
	datad => \U1|BCDCount:Digit0[0]~q\,
	combout => \U1|Digit0~0_combout\);

-- Location: FF_X52_Y53_N7
\U1|BCDCount:Digit0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \U1|Digit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|BCDCount:Digit0[1]~q\);

-- Location: LCCOMB_X52_Y53_N16
\U2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux6~0_combout\ = (\U1|BCDCount:Digit0[0]~q\ & ((\U1|BCDCount:Digit0[3]~q\) # (\U1|BCDCount:Digit0[1]~q\ $ (\U1|BCDCount:Digit0[2]~q\)))) # (!\U1|BCDCount:Digit0[0]~q\ & ((\U1|BCDCount:Digit0[1]~q\) # (\U1|BCDCount:Digit0[3]~q\ $ 
-- (\U1|BCDCount:Digit0[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|BCDCount:Digit0[1]~q\,
	datab => \U1|BCDCount:Digit0[0]~q\,
	datac => \U1|BCDCount:Digit0[3]~q\,
	datad => \U1|BCDCount:Digit0[2]~q\,
	combout => \U2|Mux6~0_combout\);

-- Location: LCCOMB_X52_Y53_N26
\U2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux5~0_combout\ = (\U1|BCDCount:Digit0[1]~q\ & (!\U1|BCDCount:Digit0[3]~q\ & ((\U1|BCDCount:Digit0[0]~q\) # (!\U1|BCDCount:Digit0[2]~q\)))) # (!\U1|BCDCount:Digit0[1]~q\ & (\U1|BCDCount:Digit0[0]~q\ & (\U1|BCDCount:Digit0[3]~q\ $ 
-- (!\U1|BCDCount:Digit0[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|BCDCount:Digit0[1]~q\,
	datab => \U1|BCDCount:Digit0[0]~q\,
	datac => \U1|BCDCount:Digit0[3]~q\,
	datad => \U1|BCDCount:Digit0[2]~q\,
	combout => \U2|Mux5~0_combout\);

-- Location: LCCOMB_X52_Y53_N8
\U2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux4~0_combout\ = (\U1|BCDCount:Digit0[1]~q\ & (\U1|BCDCount:Digit0[0]~q\ & (!\U1|BCDCount:Digit0[3]~q\))) # (!\U1|BCDCount:Digit0[1]~q\ & ((\U1|BCDCount:Digit0[2]~q\ & ((!\U1|BCDCount:Digit0[3]~q\))) # (!\U1|BCDCount:Digit0[2]~q\ & 
-- (\U1|BCDCount:Digit0[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|BCDCount:Digit0[1]~q\,
	datab => \U1|BCDCount:Digit0[0]~q\,
	datac => \U1|BCDCount:Digit0[3]~q\,
	datad => \U1|BCDCount:Digit0[2]~q\,
	combout => \U2|Mux4~0_combout\);

-- Location: LCCOMB_X52_Y53_N30
\U2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux3~0_combout\ = (\U1|BCDCount:Digit0[1]~q\ & ((\U1|BCDCount:Digit0[0]~q\ & ((\U1|BCDCount:Digit0[2]~q\))) # (!\U1|BCDCount:Digit0[0]~q\ & (\U1|BCDCount:Digit0[3]~q\ & !\U1|BCDCount:Digit0[2]~q\)))) # (!\U1|BCDCount:Digit0[1]~q\ & 
-- (!\U1|BCDCount:Digit0[3]~q\ & (\U1|BCDCount:Digit0[0]~q\ $ (\U1|BCDCount:Digit0[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|BCDCount:Digit0[1]~q\,
	datab => \U1|BCDCount:Digit0[0]~q\,
	datac => \U1|BCDCount:Digit0[3]~q\,
	datad => \U1|BCDCount:Digit0[2]~q\,
	combout => \U2|Mux3~0_combout\);

-- Location: LCCOMB_X52_Y53_N0
\U2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux2~0_combout\ = (\U1|BCDCount:Digit0[3]~q\ & (\U1|BCDCount:Digit0[2]~q\ & ((\U1|BCDCount:Digit0[1]~q\) # (!\U1|BCDCount:Digit0[0]~q\)))) # (!\U1|BCDCount:Digit0[3]~q\ & (\U1|BCDCount:Digit0[1]~q\ & (!\U1|BCDCount:Digit0[0]~q\ & 
-- !\U1|BCDCount:Digit0[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|BCDCount:Digit0[1]~q\,
	datab => \U1|BCDCount:Digit0[0]~q\,
	datac => \U1|BCDCount:Digit0[3]~q\,
	datad => \U1|BCDCount:Digit0[2]~q\,
	combout => \U2|Mux2~0_combout\);

-- Location: LCCOMB_X52_Y53_N22
\U2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux1~0_combout\ = (\U1|BCDCount:Digit0[1]~q\ & ((\U1|BCDCount:Digit0[0]~q\ & (\U1|BCDCount:Digit0[3]~q\)) # (!\U1|BCDCount:Digit0[0]~q\ & ((\U1|BCDCount:Digit0[2]~q\))))) # (!\U1|BCDCount:Digit0[1]~q\ & (\U1|BCDCount:Digit0[2]~q\ & 
-- (\U1|BCDCount:Digit0[0]~q\ $ (\U1|BCDCount:Digit0[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|BCDCount:Digit0[1]~q\,
	datab => \U1|BCDCount:Digit0[0]~q\,
	datac => \U1|BCDCount:Digit0[3]~q\,
	datad => \U1|BCDCount:Digit0[2]~q\,
	combout => \U2|Mux1~0_combout\);

-- Location: LCCOMB_X52_Y53_N20
\U2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux0~0_combout\ = (\U1|BCDCount:Digit0[3]~q\ & (\U1|BCDCount:Digit0[0]~q\ & (\U1|BCDCount:Digit0[1]~q\ $ (\U1|BCDCount:Digit0[2]~q\)))) # (!\U1|BCDCount:Digit0[3]~q\ & (!\U1|BCDCount:Digit0[1]~q\ & (\U1|BCDCount:Digit0[0]~q\ $ 
-- (\U1|BCDCount:Digit0[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|BCDCount:Digit0[1]~q\,
	datab => \U1|BCDCount:Digit0[0]~q\,
	datac => \U1|BCDCount:Digit0[3]~q\,
	datad => \U1|BCDCount:Digit0[2]~q\,
	combout => \U2|Mux0~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_SEG(0) <= \SEG[0]~output_o\;

ww_SEG(1) <= \SEG[1]~output_o\;

ww_SEG(2) <= \SEG[2]~output_o\;

ww_SEG(3) <= \SEG[3]~output_o\;

ww_SEG(4) <= \SEG[4]~output_o\;

ww_SEG(5) <= \SEG[5]~output_o\;

ww_SEG(6) <= \SEG[6]~output_o\;

ww_DIGIT_SELECT(0) <= \DIGIT_SELECT[0]~output_o\;

ww_DIGIT_SELECT(1) <= \DIGIT_SELECT[1]~output_o\;

ww_DIGIT_SELECT(2) <= \DIGIT_SELECT[2]~output_o\;
END structure;


