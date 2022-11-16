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

-- DATE "11/15/2022 22:47:05"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	FlipFlopD4BitRegister IS
    PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	clk : IN std_logic;
	Q3 : OUT STD.STANDARD.bit;
	Q2 : OUT STD.STANDARD.bit;
	Q1 : OUT STD.STANDARD.bit;
	Q0 : OUT STD.STANDARD.bit
	);
END FlipFlopD4BitRegister;

-- Design Ports Information
-- Q3	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I3	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FlipFlopD4BitRegister IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_I3 : std_logic;
SIGNAL ww_I2 : std_logic;
SIGNAL ww_I1 : std_logic;
SIGNAL ww_I0 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q3~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \I3~input_o\ : std_logic;
SIGNAL \F3|Q~q\ : std_logic;
SIGNAL \I2~input_o\ : std_logic;
SIGNAL \F2|Q~feeder_combout\ : std_logic;
SIGNAL \F2|Q~q\ : std_logic;
SIGNAL \I1~input_o\ : std_logic;
SIGNAL \F1|Q~feeder_combout\ : std_logic;
SIGNAL \F1|Q~q\ : std_logic;
SIGNAL \I0~input_o\ : std_logic;
SIGNAL \F0|Q~feeder_combout\ : std_logic;
SIGNAL \F0|Q~q\ : std_logic;

BEGIN

ww_I3 <= I3;
ww_I2 <= I2;
ww_I1 <= I1;
ww_I0 <= I0;
ww_clk <= clk;
Q3 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_Q3);
Q2 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_Q2);
Q1 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_Q1);
Q0 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_Q0);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X24_Y0_N9
\Q3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3|Q~q\,
	devoe => ww_devoe,
	o => \Q3~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\Q2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F2|Q~q\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\Q1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F1|Q~q\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\Q0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F0|Q~q\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X22_Y0_N8
\I3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I3,
	o => \I3~input_o\);

-- Location: FF_X25_Y1_N25
\F3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F3|Q~q\);

-- Location: IOIBUF_X22_Y0_N1
\I2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2,
	o => \I2~input_o\);

-- Location: LCCOMB_X23_Y13_N8
\F2|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F2|Q~feeder_combout\ = \I2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2~input_o\,
	combout => \F2|Q~feeder_combout\);

-- Location: FF_X23_Y13_N9
\F2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \F2|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F2|Q~q\);

-- Location: IOIBUF_X22_Y31_N1
\I1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1,
	o => \I1~input_o\);

-- Location: LCCOMB_X23_Y30_N16
\F1|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F1|Q~feeder_combout\ = \I1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I1~input_o\,
	combout => \F1|Q~feeder_combout\);

-- Location: FF_X23_Y30_N17
\F1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \F1|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F1|Q~q\);

-- Location: IOIBUF_X20_Y0_N8
\I0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0,
	o => \I0~input_o\);

-- Location: LCCOMB_X18_Y15_N24
\F0|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F0|Q~feeder_combout\ = \I0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I0~input_o\,
	combout => \F0|Q~feeder_combout\);

-- Location: FF_X18_Y15_N25
\F0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \F0|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Q~q\);

ww_Q3 <= \Q3~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q0 <= \Q0~output_o\;
END structure;


