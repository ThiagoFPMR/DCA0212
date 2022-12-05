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

-- DATE "12/04/2022 19:19:56"

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

ENTITY 	MagnitudeComparator1Bit IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	in_gt : IN std_logic;
	in_eq : IN std_logic;
	in_lt : IN std_logic;
	out_gt : OUT STD.STANDARD.bit;
	out_eq : OUT STD.STANDARD.bit;
	out_lt : OUT STD.STANDARD.bit
	);
END MagnitudeComparator1Bit;

-- Design Ports Information
-- out_gt	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_eq	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_lt	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_gt	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_eq	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_lt	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MagnitudeComparator1Bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_in_gt : std_logic;
SIGNAL ww_in_eq : std_logic;
SIGNAL ww_in_lt : std_logic;
SIGNAL ww_out_gt : std_logic;
SIGNAL ww_out_eq : std_logic;
SIGNAL ww_out_lt : std_logic;
SIGNAL \out_gt~output_o\ : std_logic;
SIGNAL \out_eq~output_o\ : std_logic;
SIGNAL \out_lt~output_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \in_gt~input_o\ : std_logic;
SIGNAL \in_eq~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \out_gt~0_combout\ : std_logic;
SIGNAL \in_lt~input_o\ : std_logic;
SIGNAL \out_eq~0_combout\ : std_logic;
SIGNAL \out_lt~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_in_gt <= in_gt;
ww_in_eq <= in_eq;
ww_in_lt <= in_lt;
out_gt <= IEEE.STD_LOGIC_1164.TO_BIT(ww_out_gt);
out_eq <= IEEE.STD_LOGIC_1164.TO_BIT(ww_out_eq);
out_lt <= IEEE.STD_LOGIC_1164.TO_BIT(ww_out_lt);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N9
\out_gt~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_gt~0_combout\,
	devoe => ww_devoe,
	o => \out_gt~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\out_eq~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_eq~0_combout\,
	devoe => ww_devoe,
	o => \out_eq~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\out_lt~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_lt~0_combout\,
	devoe => ww_devoe,
	o => \out_lt~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\B~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\in_gt~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_gt,
	o => \in_gt~input_o\);

-- Location: IOIBUF_X10_Y31_N1
\in_eq~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_eq,
	o => \in_eq~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\A~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X6_Y1_N0
\out_gt~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_gt~0_combout\ = (\in_gt~input_o\) # ((!\B~input_o\ & (\in_eq~input_o\ & \A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \in_gt~input_o\,
	datac => \in_eq~input_o\,
	datad => \A~input_o\,
	combout => \out_gt~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
\in_lt~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_lt,
	o => \in_lt~input_o\);

-- Location: LCCOMB_X6_Y1_N10
\out_eq~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_eq~0_combout\ = (\in_lt~input_o\) # ((\B~input_o\ & (\in_eq~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \in_eq~input_o\,
	datac => \in_lt~input_o\,
	datad => \A~input_o\,
	combout => \out_eq~0_combout\);

-- Location: LCCOMB_X6_Y1_N20
\out_lt~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_lt~0_combout\ = (\in_eq~input_o\ & (\B~input_o\ $ (!\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datac => \in_eq~input_o\,
	datad => \A~input_o\,
	combout => \out_lt~0_combout\);

ww_out_gt <= \out_gt~output_o\;

ww_out_eq <= \out_eq~output_o\;

ww_out_lt <= \out_lt~output_o\;
END structure;


