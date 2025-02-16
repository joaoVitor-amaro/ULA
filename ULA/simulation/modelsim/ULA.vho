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

-- DATE "02/16/2025 11:48:17"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	A : IN std_logic_vector(5 DOWNTO 0);
	B : IN std_logic_vector(5 DOWNTO 0);
	reset : IN std_logic;
	modo : IN std_logic;
	op_sel : IN std_logic_vector(2 DOWNTO 0);
	O : OUT std_logic_vector(5 DOWNTO 0);
	carry_out : OUT std_logic;
	zero : OUT std_logic
	);
END ULA;

-- Design Ports Information
-- O[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[2]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry_out	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modo	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_modo : std_logic;
SIGNAL ww_op_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_O : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_carry_out : std_logic;
SIGNAL ww_zero : std_logic;
SIGNAL \O[0]~output_o\ : std_logic;
SIGNAL \O[1]~output_o\ : std_logic;
SIGNAL \O[2]~output_o\ : std_logic;
SIGNAL \O[3]~output_o\ : std_logic;
SIGNAL \O[4]~output_o\ : std_logic;
SIGNAL \O[5]~output_o\ : std_logic;
SIGNAL \carry_out~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \op_sel[1]~input_o\ : std_logic;
SIGNAL \op_sel[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \O~12_combout\ : std_logic;
SIGNAL \modo~input_o\ : std_logic;
SIGNAL \op_sel[2]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \O~19_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \O~14_combout\ : std_logic;
SIGNAL \O~20_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \O~15_combout\ : std_logic;
SIGNAL \O~21_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \O~16_combout\ : std_logic;
SIGNAL \O~22_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \O~17_combout\ : std_logic;
SIGNAL \O~23_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \O~18_combout\ : std_logic;
SIGNAL \O~24_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \O~13_combout\ : std_logic;
SIGNAL \zero~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_reset <= reset;
ww_modo <= modo;
ww_op_sel <= op_sel;
O <= ww_O;
carry_out <= ww_carry_out;
zero <= ww_zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X31_Y31_N2
\O[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O~19_combout\,
	devoe => ww_devoe,
	o => \O[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\O[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O~20_combout\,
	devoe => ww_devoe,
	o => \O[1]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\O[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O~21_combout\,
	devoe => ww_devoe,
	o => \O[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\O[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O~22_combout\,
	devoe => ww_devoe,
	o => \O[3]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\O[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O~23_combout\,
	devoe => ww_devoe,
	o => \O[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\O[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O~24_combout\,
	devoe => ww_devoe,
	o => \O[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\carry_out~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carry_out~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\zero~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zero~0_combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

-- Location: IOIBUF_X8_Y0_N1
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X22_Y31_N8
\op_sel[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(1),
	o => \op_sel[1]~input_o\);

-- Location: IOIBUF_X24_Y31_N1
\op_sel[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(0),
	o => \op_sel[0]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X11_Y8_N8
\O~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \O~12_combout\ = (\op_sel[1]~input_o\ & (\A[0]~input_o\ $ (((\B[0]~input_o\) # (\op_sel[0]~input_o\))))) # (!\op_sel[1]~input_o\ & ((\B[0]~input_o\ & ((\op_sel[0]~input_o\) # (\A[0]~input_o\))) # (!\B[0]~input_o\ & (\op_sel[0]~input_o\ & 
-- \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \O~12_combout\);

-- Location: IOIBUF_X22_Y0_N1
\modo~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_modo,
	o => \modo~input_o\);

-- Location: IOIBUF_X20_Y31_N8
\op_sel[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(2),
	o => \op_sel[2]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X11_Y8_N26
\O~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \O~19_combout\ = (\O~12_combout\ & (\modo~input_o\ & (!\op_sel[2]~input_o\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \O~12_combout\,
	datab => \modo~input_o\,
	datac => \op_sel[2]~input_o\,
	datad => \reset~input_o\,
	combout => \O~19_combout\);

-- Location: IOIBUF_X26_Y0_N8
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X11_Y8_N12
\O~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \O~14_combout\ = (\op_sel[1]~input_o\ & (\A[1]~input_o\ $ (((\B[1]~input_o\) # (\op_sel[0]~input_o\))))) # (!\op_sel[1]~input_o\ & ((\B[1]~input_o\ & ((\op_sel[0]~input_o\) # (\A[1]~input_o\))) # (!\B[1]~input_o\ & (\op_sel[0]~input_o\ & 
-- \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \O~14_combout\);

-- Location: LCCOMB_X11_Y8_N20
\O~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \O~20_combout\ = (\O~14_combout\ & (\modo~input_o\ & (!\op_sel[2]~input_o\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \O~14_combout\,
	datab => \modo~input_o\,
	datac => \op_sel[2]~input_o\,
	datad => \reset~input_o\,
	combout => \O~20_combout\);

-- Location: IOIBUF_X20_Y0_N8
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X11_Y8_N22
\O~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \O~15_combout\ = (\A[2]~input_o\ & (\op_sel[1]~input_o\ $ (((\B[2]~input_o\) # (\op_sel[0]~input_o\))))) # (!\A[2]~input_o\ & ((\B[2]~input_o\ & ((\op_sel[0]~input_o\) # (\op_sel[1]~input_o\))) # (!\B[2]~input_o\ & (\op_sel[0]~input_o\ & 
-- \op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \O~15_combout\);

-- Location: LCCOMB_X11_Y8_N30
\O~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \O~21_combout\ = (\O~15_combout\ & (\modo~input_o\ & (!\op_sel[2]~input_o\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \O~15_combout\,
	datab => \modo~input_o\,
	datac => \op_sel[2]~input_o\,
	datad => \reset~input_o\,
	combout => \O~21_combout\);

-- Location: IOIBUF_X16_Y31_N1
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X16_Y31_N8
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X11_Y8_N24
\O~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \O~16_combout\ = (\A[3]~input_o\ & (\op_sel[1]~input_o\ $ (((\B[3]~input_o\) # (\op_sel[0]~input_o\))))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & ((\op_sel[0]~input_o\) # (\op_sel[1]~input_o\))) # (!\B[3]~input_o\ & (\op_sel[0]~input_o\ & 
-- \op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \O~16_combout\);

-- Location: LCCOMB_X11_Y8_N0
\O~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \O~22_combout\ = (\O~16_combout\ & (\modo~input_o\ & (!\op_sel[2]~input_o\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \O~16_combout\,
	datab => \modo~input_o\,
	datac => \op_sel[2]~input_o\,
	datad => \reset~input_o\,
	combout => \O~22_combout\);

-- Location: IOIBUF_X10_Y31_N1
\B[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X11_Y8_N10
\O~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \O~17_combout\ = (\A[4]~input_o\ & (\op_sel[1]~input_o\ $ (((\B[4]~input_o\) # (\op_sel[0]~input_o\))))) # (!\A[4]~input_o\ & ((\B[4]~input_o\ & ((\op_sel[0]~input_o\) # (\op_sel[1]~input_o\))) # (!\B[4]~input_o\ & (\op_sel[0]~input_o\ & 
-- \op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \O~17_combout\);

-- Location: LCCOMB_X11_Y8_N2
\O~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \O~23_combout\ = (\O~17_combout\ & (\modo~input_o\ & (!\op_sel[2]~input_o\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \O~17_combout\,
	datab => \modo~input_o\,
	datac => \op_sel[2]~input_o\,
	datad => \reset~input_o\,
	combout => \O~23_combout\);

-- Location: IOIBUF_X12_Y0_N8
\B[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X11_Y8_N28
\O~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \O~18_combout\ = (\A[5]~input_o\ & (\op_sel[1]~input_o\ $ (((\B[5]~input_o\) # (\op_sel[0]~input_o\))))) # (!\A[5]~input_o\ & ((\B[5]~input_o\ & ((\op_sel[0]~input_o\) # (\op_sel[1]~input_o\))) # (!\B[5]~input_o\ & (\op_sel[0]~input_o\ & 
-- \op_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \O~18_combout\);

-- Location: LCCOMB_X11_Y8_N4
\O~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \O~24_combout\ = (\O~18_combout\ & (\modo~input_o\ & (!\op_sel[2]~input_o\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \O~18_combout\,
	datab => \modo~input_o\,
	datac => \op_sel[2]~input_o\,
	datad => \reset~input_o\,
	combout => \O~24_combout\);

-- Location: LCCOMB_X11_Y8_N14
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\O~14_combout\ & (!\O~16_combout\ & (!\O~15_combout\ & !\O~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \O~14_combout\,
	datab => \O~16_combout\,
	datac => \O~15_combout\,
	datad => \O~12_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X11_Y8_N18
\O~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \O~13_combout\ = (\modo~input_o\ & (!\op_sel[2]~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \modo~input_o\,
	datac => \op_sel[2]~input_o\,
	datad => \reset~input_o\,
	combout => \O~13_combout\);

-- Location: LCCOMB_X11_Y8_N16
\zero~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \zero~0_combout\ = ((!\O~17_combout\ & (!\O~18_combout\ & \Equal0~0_combout\))) # (!\O~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \O~17_combout\,
	datab => \O~18_combout\,
	datac => \Equal0~0_combout\,
	datad => \O~13_combout\,
	combout => \zero~0_combout\);

ww_O(0) <= \O[0]~output_o\;

ww_O(1) <= \O[1]~output_o\;

ww_O(2) <= \O[2]~output_o\;

ww_O(3) <= \O[3]~output_o\;

ww_O(4) <= \O[4]~output_o\;

ww_O(5) <= \O[5]~output_o\;

ww_carry_out <= \carry_out~output_o\;

ww_zero <= \zero~output_o\;
END structure;


