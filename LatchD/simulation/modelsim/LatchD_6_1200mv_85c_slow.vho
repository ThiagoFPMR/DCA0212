-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/15/2022 21:55:54"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	LatchD IS
    PORT (
	D : IN std_logic;
	c : IN std_logic;
	Q : OUT STD.STANDARD.bit
	);
END LatchD;

-- Design Ports Information
-- Q	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LatchD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \Q$latch~combout\ : std_logic;

BEGIN

ww_D <= D;
ww_c <= c;
Q <= IEEE.STD_LOGIC_1164.TO_BIT(ww_Q);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y31_N2
\Q~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q$latch~combout\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOIBUF_X20_Y31_N8
\D~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\c~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: LCCOMB_X12_Y30_N2
\process_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\D~input_o\ & \c~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D~input_o\,
	datad => \c~input_o\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X12_Y30_N0
\comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!\D~input_o\ & \c~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D~input_o\,
	datad => \c~input_o\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X12_Y30_N20
\Q$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Q$latch~combout\ = (!\comb~0_combout\ & ((\process_0~0_combout\) # (\Q$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~0_combout\,
	datac => \comb~0_combout\,
	datad => \Q$latch~combout\,
	combout => \Q$latch~combout\);

ww_Q <= \Q~output_o\;
END structure;


