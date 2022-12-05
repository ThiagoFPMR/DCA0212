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

-- DATE "12/04/2022 19:40:45"

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

ENTITY 	MagnitudeComparator4Bit IS
    PORT (
	A3 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	B3 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	AgtB : OUT STD.STANDARD.bit;
	AeqB : OUT STD.STANDARD.bit;
	AltB : OUT STD.STANDARD.bit
	);
END MagnitudeComparator4Bit;

-- Design Ports Information
-- AgtB	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AeqB	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MagnitudeComparator4Bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_AgtB : std_logic;
SIGNAL ww_AeqB : std_logic;
SIGNAL ww_AltB : std_logic;
SIGNAL \AgtB~output_o\ : std_logic;
SIGNAL \AeqB~output_o\ : std_logic;
SIGNAL \AltB~output_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \C3|out_gt~0_combout\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \C3|out_gt~1_combout\ : std_logic;
SIGNAL \C3|out_gt~2_combout\ : std_logic;
SIGNAL \C3|out_gt~3_combout\ : std_logic;
SIGNAL \C3|out_eq~0_combout\ : std_logic;
SIGNAL \C3|out_eq~combout\ : std_logic;
SIGNAL \C3|out_lt~1_combout\ : std_logic;
SIGNAL \C3|out_lt~0_combout\ : std_logic;
SIGNAL \C3|out_lt~2_combout\ : std_logic;
SIGNAL \C3|ALT_INV_out_eq~combout\ : std_logic;

BEGIN

ww_A3 <= A3;
ww_A2 <= A2;
ww_A1 <= A1;
ww_A0 <= A0;
ww_B3 <= B3;
ww_B2 <= B2;
ww_B1 <= B1;
ww_B0 <= B0;
AgtB <= IEEE.STD_LOGIC_1164.TO_BIT(ww_AgtB);
AeqB <= IEEE.STD_LOGIC_1164.TO_BIT(ww_AeqB);
AltB <= IEEE.STD_LOGIC_1164.TO_BIT(ww_AltB);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\C3|ALT_INV_out_eq~combout\ <= NOT \C3|out_eq~combout\;

-- Location: IOOBUF_X29_Y0_N2
\AgtB~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|out_gt~3_combout\,
	devoe => ww_devoe,
	o => \AgtB~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\AeqB~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|ALT_INV_out_eq~combout\,
	devoe => ww_devoe,
	o => \AeqB~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\AltB~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|out_lt~2_combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOIBUF_X24_Y0_N8
\B0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\B1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\A1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\A0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: LCCOMB_X23_Y1_N0
\C3|out_gt~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C3|out_gt~0_combout\ = (\B0~input_o\ & (!\B1~input_o\ & (\A1~input_o\ & \A0~input_o\))) # (!\B0~input_o\ & ((\A0~input_o\) # ((!\B1~input_o\ & \A1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0~input_o\,
	datab => \B1~input_o\,
	datac => \A1~input_o\,
	datad => \A0~input_o\,
	combout => \C3|out_gt~0_combout\);

-- Location: IOIBUF_X8_Y0_N8
\B3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\A3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\B2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\A2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: LCCOMB_X23_Y1_N26
\C3|out_gt~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C3|out_gt~1_combout\ = (\B2~input_o\ & (!\B3~input_o\ & (\A3~input_o\ & \A2~input_o\))) # (!\B2~input_o\ & ((\A2~input_o\) # ((!\B3~input_o\ & \A3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \A3~input_o\,
	datac => \B2~input_o\,
	datad => \A2~input_o\,
	combout => \C3|out_gt~1_combout\);

-- Location: LCCOMB_X23_Y1_N28
\C3|out_gt~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C3|out_gt~2_combout\ = (\B0~input_o\ & (\A0~input_o\ & (\B1~input_o\ $ (!\A1~input_o\)))) # (!\B0~input_o\ & (!\A0~input_o\ & (\B1~input_o\ $ (!\A1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0~input_o\,
	datab => \B1~input_o\,
	datac => \A1~input_o\,
	datad => \A0~input_o\,
	combout => \C3|out_gt~2_combout\);

-- Location: LCCOMB_X23_Y1_N30
\C3|out_gt~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C3|out_gt~3_combout\ = (\C3|out_gt~0_combout\) # ((\C3|out_gt~1_combout\ & \C3|out_gt~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|out_gt~0_combout\,
	datac => \C3|out_gt~1_combout\,
	datad => \C3|out_gt~2_combout\,
	combout => \C3|out_gt~3_combout\);

-- Location: LCCOMB_X23_Y1_N16
\C3|out_eq~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C3|out_eq~0_combout\ = (\B3~input_o\ & ((\B2~input_o\ $ (\A2~input_o\)) # (!\A3~input_o\))) # (!\B3~input_o\ & ((\A3~input_o\) # (\B2~input_o\ $ (\A2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \A3~input_o\,
	datac => \B2~input_o\,
	datad => \A2~input_o\,
	combout => \C3|out_eq~0_combout\);

-- Location: LCCOMB_X23_Y1_N18
\C3|out_eq\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C3|out_eq~combout\ = (\C3|out_eq~0_combout\) # (!\C3|out_gt~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|out_eq~0_combout\,
	datad => \C3|out_gt~2_combout\,
	combout => \C3|out_eq~combout\);

-- Location: LCCOMB_X23_Y1_N6
\C3|out_lt~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C3|out_lt~1_combout\ = (\B2~input_o\ & (((\B3~input_o\ & !\A3~input_o\)) # (!\A2~input_o\))) # (!\B2~input_o\ & (\B3~input_o\ & (!\A3~input_o\ & !\A2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \A3~input_o\,
	datac => \B2~input_o\,
	datad => \A2~input_o\,
	combout => \C3|out_lt~1_combout\);

-- Location: LCCOMB_X23_Y1_N12
\C3|out_lt~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C3|out_lt~0_combout\ = (\B0~input_o\ & (((\B1~input_o\ & !\A1~input_o\)) # (!\A0~input_o\))) # (!\B0~input_o\ & (\B1~input_o\ & (!\A1~input_o\ & !\A0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0~input_o\,
	datab => \B1~input_o\,
	datac => \A1~input_o\,
	datad => \A0~input_o\,
	combout => \C3|out_lt~0_combout\);

-- Location: LCCOMB_X23_Y1_N24
\C3|out_lt~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C3|out_lt~2_combout\ = (\C3|out_lt~0_combout\) # ((\C3|out_lt~1_combout\ & \C3|out_gt~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|out_lt~1_combout\,
	datab => \C3|out_gt~2_combout\,
	datad => \C3|out_lt~0_combout\,
	combout => \C3|out_lt~2_combout\);

ww_AgtB <= \AgtB~output_o\;

ww_AeqB <= \AeqB~output_o\;

ww_AltB <= \AltB~output_o\;
END structure;


