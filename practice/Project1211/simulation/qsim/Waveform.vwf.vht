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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/11/2024 11:45:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          g0
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g0_vhd_vec_tst IS
END g0_vhd_vec_tst;
ARCHITECTURE g0_arch OF g0_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL en : STD_LOGIC;
SIGNAL L1 : STD_LOGIC;
SIGNAL L2 : STD_LOGIC;
SIGNAL M : STD_LOGIC;
SIGNAL rstn : STD_LOGIC;
SIGNAL V1 : STD_LOGIC;
SIGNAL V2 : STD_LOGIC;
SIGNAL y0 : STD_LOGIC;
SIGNAL y1 : STD_LOGIC;
SIGNAL y2 : STD_LOGIC;
SIGNAL y3 : STD_LOGIC;
COMPONENT g0
	PORT (
	clk : IN STD_LOGIC;
	en : IN STD_LOGIC;
	L1 : IN STD_LOGIC;
	L2 : IN STD_LOGIC;
	M : OUT STD_LOGIC;
	rstn : IN STD_LOGIC;
	V1 : OUT STD_LOGIC;
	V2 : OUT STD_LOGIC;
	y0 : OUT STD_LOGIC;
	y1 : OUT STD_LOGIC;
	y2 : OUT STD_LOGIC;
	y3 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : g0
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	en => en,
	L1 => L1,
	L2 => L2,
	M => M,
	rstn => rstn,
	V1 => V1,
	V2 => V2,
	y0 => y0,
	y1 => y1,
	y2 => y2,
	y3 => y3
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- en
t_prcs_en: PROCESS
BEGIN
	en <= '0';
	WAIT FOR 260000 ps;
	en <= '1';
WAIT;
END PROCESS t_prcs_en;

-- L1
t_prcs_L1: PROCESS
BEGIN
	L1 <= '0';
	WAIT FOR 580000 ps;
	L1 <= '1';
WAIT;
END PROCESS t_prcs_L1;

-- L2
t_prcs_L2: PROCESS
BEGIN
	L2 <= '0';
	WAIT FOR 840000 ps;
	L2 <= '1';
WAIT;
END PROCESS t_prcs_L2;

-- rstn
t_prcs_rstn: PROCESS
BEGIN
	rstn <= '0';
	WAIT FOR 200000 ps;
	rstn <= '1';
WAIT;
END PROCESS t_prcs_rstn;
END g0_arch;
