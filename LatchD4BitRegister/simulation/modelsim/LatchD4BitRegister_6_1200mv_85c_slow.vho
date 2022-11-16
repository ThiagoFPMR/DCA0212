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

-- DATE "11/15/2022 22:39:02"

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

ENTITY 	LatchD4BitRegister IS
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
END LatchD4BitRegister;

-- Design Ports Information
-- I3	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LatchD4BitRegister IS
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
SIGNAL \I3~input_o\ : std_logic;
SIGNAL \I2~input_o\ : std_logic;
SIGNAL \I1~input_o\ : std_logic;
SIGNAL \I0~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \Q3~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;

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

-- Location: IOOBUF_X29_Y0_N2
\Q3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q3~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\Q2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\Q1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\Q0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOIBUF_X33_Y22_N8
\I3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I3,
	o => \I3~input_o\);

-- Location: IOIBUF_X29_Y31_N8
\I2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2,
	o => \I2~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\I1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1,
	o => \I1~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\I0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0,
	o => \I0~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

ww_Q3 <= \Q3~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q0 <= \Q0~output_o\;
END structure;


