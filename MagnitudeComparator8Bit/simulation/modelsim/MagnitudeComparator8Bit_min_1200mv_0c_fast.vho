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

-- DATE "12/04/2022 20:54:57"

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

ENTITY 	MagnitudeComparator8Bit IS
    PORT (
	A7 : IN std_logic;
	A6 : IN std_logic;
	A5 : IN std_logic;
	A4 : IN std_logic;
	A3 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	B7 : IN std_logic;
	B6 : IN std_logic;
	B5 : IN std_logic;
	B4 : IN std_logic;
	B3 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	AgtB : OUT STD.STANDARD.bit;
	AeqB : OUT STD.STANDARD.bit;
	AltB : OUT STD.STANDARD.bit
	);
END MagnitudeComparator8Bit;

-- Design Ports Information
-- AgtB	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AeqB	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A4	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B4	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A5	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A6	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B6	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B5	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A7	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B7	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MagnitudeComparator8Bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A7 : std_logic;
SIGNAL ww_A6 : std_logic;
SIGNAL ww_A5 : std_logic;
SIGNAL ww_A4 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B7 : std_logic;
SIGNAL ww_B6 : std_logic;
SIGNAL ww_B5 : std_logic;
SIGNAL ww_B4 : std_logic;
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
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \B4~input_o\ : std_logic;
SIGNAL \A4~input_o\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \C4|out_eq~0_combout\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \C2|out_lt~0_combout\ : std_logic;
SIGNAL \C4|out_eq~combout\ : std_logic;
SIGNAL \C7|out_gt~0_combout\ : std_logic;
SIGNAL \C7|out_gt~1_combout\ : std_logic;
SIGNAL \C7|out_gt~2_combout\ : std_logic;
SIGNAL \B6~input_o\ : std_logic;
SIGNAL \A6~input_o\ : std_logic;
SIGNAL \B5~input_o\ : std_logic;
SIGNAL \A5~input_o\ : std_logic;
SIGNAL \C7|out_gt~4_combout\ : std_logic;
SIGNAL \B7~input_o\ : std_logic;
SIGNAL \A7~input_o\ : std_logic;
SIGNAL \C7|out_gt~3_combout\ : std_logic;
SIGNAL \C7|out_gt~5_combout\ : std_logic;
SIGNAL \C7|out_gt~6_combout\ : std_logic;
SIGNAL \C7|out_eq~combout\ : std_logic;
SIGNAL \C7|out_lt~1_combout\ : std_logic;
SIGNAL \C7|out_lt~2_combout\ : std_logic;
SIGNAL \C7|out_lt~3_combout\ : std_logic;
SIGNAL \C7|out_lt~4_combout\ : std_logic;
SIGNAL \C7|out_lt~0_combout\ : std_logic;
SIGNAL \C7|out_lt~5_combout\ : std_logic;
SIGNAL \C7|ALT_INV_out_eq~combout\ : std_logic;

BEGIN

ww_A7 <= A7;
ww_A6 <= A6;
ww_A5 <= A5;
ww_A4 <= A4;
ww_A3 <= A3;
ww_A2 <= A2;
ww_A1 <= A1;
ww_A0 <= A0;
ww_B7 <= B7;
ww_B6 <= B6;
ww_B5 <= B5;
ww_B4 <= B4;
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
\C7|ALT_INV_out_eq~combout\ <= NOT \C7|out_eq~combout\;

-- Location: IOOBUF_X22_Y0_N2
\AgtB~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C7|out_gt~6_combout\,
	devoe => ww_devoe,
	o => \AgtB~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\AeqB~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C7|ALT_INV_out_eq~combout\,
	devoe => ww_devoe,
	o => \AeqB~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\AltB~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C7|out_lt~5_combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\A2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\A3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\B4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B4,
	o => \B4~input_o\);

-- Location: IOIBUF_X31_Y31_N1
\A4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A4,
	o => \A4~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\B3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: LCCOMB_X19_Y1_N24
\C4|out_eq~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C4|out_eq~0_combout\ = (\A3~input_o\ & ((\B4~input_o\ $ (\A4~input_o\)) # (!\B3~input_o\))) # (!\A3~input_o\ & ((\B3~input_o\) # (\B4~input_o\ $ (\A4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \B4~input_o\,
	datac => \A4~input_o\,
	datad => \B3~input_o\,
	combout => \C4|out_eq~0_combout\);

-- Location: IOIBUF_X29_Y0_N8
\B2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\A1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\B1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\B0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\A0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: LCCOMB_X19_Y1_N18
\C2|out_lt~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C2|out_lt~0_combout\ = (\A1~input_o\ & (\B1~input_o\ & (\B0~input_o\ $ (!\A0~input_o\)))) # (!\A1~input_o\ & (!\B1~input_o\ & (\B0~input_o\ $ (!\A0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \B1~input_o\,
	datac => \B0~input_o\,
	datad => \A0~input_o\,
	combout => \C2|out_lt~0_combout\);

-- Location: LCCOMB_X19_Y1_N26
\C4|out_eq\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C4|out_eq~combout\ = (\C4|out_eq~0_combout\) # ((\A2~input_o\ $ (\B2~input_o\)) # (!\C2|out_lt~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~input_o\,
	datab => \C4|out_eq~0_combout\,
	datac => \B2~input_o\,
	datad => \C2|out_lt~0_combout\,
	combout => \C4|out_eq~combout\);

-- Location: LCCOMB_X19_Y1_N0
\C7|out_gt~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C7|out_gt~0_combout\ = (\B0~input_o\ & (\A1~input_o\ & (!\B1~input_o\ & \A0~input_o\))) # (!\B0~input_o\ & ((\A0~input_o\) # ((\A1~input_o\ & !\B1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \B1~input_o\,
	datac => \B0~input_o\,
	datad => \A0~input_o\,
	combout => \C7|out_gt~0_combout\);

-- Location: LCCOMB_X19_Y1_N28
\C7|out_gt~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C7|out_gt~1_combout\ = (\A3~input_o\ & (((!\B4~input_o\ & \A4~input_o\)) # (!\B3~input_o\))) # (!\A3~input_o\ & (!\B4~input_o\ & (\A4~input_o\ & !\B3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \B4~input_o\,
	datac => \A4~input_o\,
	datad => \B3~input_o\,
	combout => \C7|out_gt~1_combout\);

-- Location: LCCOMB_X19_Y1_N22
\C7|out_gt~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C7|out_gt~2_combout\ = (\C2|out_lt~0_combout\ & ((\A2~input_o\ & ((\C7|out_gt~1_combout\) # (!\B2~input_o\))) # (!\A2~input_o\ & (\C7|out_gt~1_combout\ & !\B2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~input_o\,
	datab => \C7|out_gt~1_combout\,
	datac => \B2~input_o\,
	datad => \C2|out_lt~0_combout\,
	combout => \C7|out_gt~2_combout\);

-- Location: IOIBUF_X20_Y31_N8
\B6~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B6,
	o => \B6~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\A6~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A6,
	o => \A6~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\B5~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B5,
	o => \B5~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\A5~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A5,
	o => \A5~input_o\);

-- Location: LCCOMB_X24_Y1_N10
\C7|out_gt~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C7|out_gt~4_combout\ = (\B6~input_o\ & (\A6~input_o\ & (\B5~input_o\ $ (!\A5~input_o\)))) # (!\B6~input_o\ & (!\A6~input_o\ & (\B5~input_o\ $ (!\A5~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B6~input_o\,
	datab => \A6~input_o\,
	datac => \B5~input_o\,
	datad => \A5~input_o\,
	combout => \C7|out_gt~4_combout\);

-- Location: IOIBUF_X22_Y0_N8
\B7~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B7,
	o => \B7~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\A7~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A7,
	o => \A7~input_o\);

-- Location: LCCOMB_X24_Y1_N0
\C7|out_gt~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C7|out_gt~3_combout\ = (\B5~input_o\ & (!\B6~input_o\ & (\A6~input_o\ & \A5~input_o\))) # (!\B5~input_o\ & ((\A5~input_o\) # ((!\B6~input_o\ & \A6~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B6~input_o\,
	datab => \A6~input_o\,
	datac => \B5~input_o\,
	datad => \A5~input_o\,
	combout => \C7|out_gt~3_combout\);

-- Location: LCCOMB_X24_Y1_N4
\C7|out_gt~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C7|out_gt~5_combout\ = (\C7|out_gt~3_combout\) # ((\C7|out_gt~4_combout\ & (!\B7~input_o\ & \A7~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|out_gt~4_combout\,
	datab => \B7~input_o\,
	datac => \A7~input_o\,
	datad => \C7|out_gt~3_combout\,
	combout => \C7|out_gt~5_combout\);

-- Location: LCCOMB_X19_Y1_N12
\C7|out_gt~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C7|out_gt~6_combout\ = (\C7|out_gt~0_combout\) # ((\C7|out_gt~2_combout\) # ((!\C4|out_eq~combout\ & \C7|out_gt~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|out_eq~combout\,
	datab => \C7|out_gt~0_combout\,
	datac => \C7|out_gt~2_combout\,
	datad => \C7|out_gt~5_combout\,
	combout => \C7|out_gt~6_combout\);

-- Location: LCCOMB_X24_Y1_N22
\C7|out_eq\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C7|out_eq~combout\ = ((\C4|out_eq~combout\) # (\B7~input_o\ $ (\A7~input_o\))) # (!\C7|out_gt~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|out_gt~4_combout\,
	datab => \B7~input_o\,
	datac => \A7~input_o\,
	datad => \C4|out_eq~combout\,
	combout => \C7|out_eq~combout\);

-- Location: LCCOMB_X19_Y1_N16
\C7|out_lt~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C7|out_lt~1_combout\ = (\A3~input_o\ & (\B4~input_o\ & (!\A4~input_o\ & \B3~input_o\))) # (!\A3~input_o\ & ((\B3~input_o\) # ((\B4~input_o\ & !\A4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \B4~input_o\,
	datac => \A4~input_o\,
	datad => \B3~input_o\,
	combout => \C7|out_lt~1_combout\);

-- Location: LCCOMB_X19_Y1_N2
\C7|out_lt~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C7|out_lt~2_combout\ = (\C2|out_lt~0_combout\ & ((\A2~input_o\ & (\C7|out_lt~1_combout\ & \B2~input_o\)) # (!\A2~input_o\ & ((\C7|out_lt~1_combout\) # (\B2~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~input_o\,
	datab => \C7|out_lt~1_combout\,
	datac => \B2~input_o\,
	datad => \C2|out_lt~0_combout\,
	combout => \C7|out_lt~2_combout\);

-- Location: LCCOMB_X24_Y1_N24
\C7|out_lt~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C7|out_lt~3_combout\ = (\B5~input_o\ & (((\B6~input_o\ & !\A6~input_o\)) # (!\A5~input_o\))) # (!\B5~input_o\ & (\B6~input_o\ & (!\A6~input_o\ & !\A5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B6~input_o\,
	datab => \A6~input_o\,
	datac => \B5~input_o\,
	datad => \A5~input_o\,
	combout => \C7|out_lt~3_combout\);

-- Location: LCCOMB_X24_Y1_N2
\C7|out_lt~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C7|out_lt~4_combout\ = (\C7|out_lt~3_combout\) # ((\C7|out_gt~4_combout\ & (\B7~input_o\ & !\A7~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|out_gt~4_combout\,
	datab => \B7~input_o\,
	datac => \A7~input_o\,
	datad => \C7|out_lt~3_combout\,
	combout => \C7|out_lt~4_combout\);

-- Location: LCCOMB_X19_Y1_N6
\C7|out_lt~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C7|out_lt~0_combout\ = (\B0~input_o\ & (((!\A1~input_o\ & \B1~input_o\)) # (!\A0~input_o\))) # (!\B0~input_o\ & (!\A1~input_o\ & (\B1~input_o\ & !\A0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \B1~input_o\,
	datac => \B0~input_o\,
	datad => \A0~input_o\,
	combout => \C7|out_lt~0_combout\);

-- Location: LCCOMB_X19_Y1_N4
\C7|out_lt~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C7|out_lt~5_combout\ = (\C7|out_lt~2_combout\) # ((\C7|out_lt~0_combout\) # ((!\C4|out_eq~combout\ & \C7|out_lt~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|out_eq~combout\,
	datab => \C7|out_lt~2_combout\,
	datac => \C7|out_lt~4_combout\,
	datad => \C7|out_lt~0_combout\,
	combout => \C7|out_lt~5_combout\);

ww_AgtB <= \AgtB~output_o\;

ww_AeqB <= \AeqB~output_o\;

ww_AltB <= \AltB~output_o\;
END structure;


