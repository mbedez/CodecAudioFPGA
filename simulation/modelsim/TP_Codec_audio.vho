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

-- DATE "04/26/2024 09:43:39"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Compteur26bit IS
    PORT (
	ck_50 : IN std_logic;
	rst : IN std_logic;
	msb1 : OUT std_logic;
	msb2 : OUT std_logic;
	msb3 : OUT std_logic;
	msb4 : OUT std_logic
	);
END Compteur26bit;

-- Design Ports Information
-- msb1	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msb2	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msb3	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msb4	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck_50	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Compteur26bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ck_50 : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_msb1 : std_logic;
SIGNAL ww_msb2 : std_logic;
SIGNAL ww_msb3 : std_logic;
SIGNAL ww_msb4 : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \msb1~output_o\ : std_logic;
SIGNAL \msb2~output_o\ : std_logic;
SIGNAL \msb3~output_o\ : std_logic;
SIGNAL \msb4~output_o\ : std_logic;
SIGNAL \ck_50~input_o\ : std_logic;
SIGNAL \ck_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \qsig[0]~75_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \qsig[1]~25_combout\ : std_logic;
SIGNAL \qsig[1]~26\ : std_logic;
SIGNAL \qsig[2]~27_combout\ : std_logic;
SIGNAL \qsig[2]~28\ : std_logic;
SIGNAL \qsig[3]~29_combout\ : std_logic;
SIGNAL \qsig[3]~30\ : std_logic;
SIGNAL \qsig[4]~31_combout\ : std_logic;
SIGNAL \qsig[4]~32\ : std_logic;
SIGNAL \qsig[5]~33_combout\ : std_logic;
SIGNAL \qsig[5]~34\ : std_logic;
SIGNAL \qsig[6]~35_combout\ : std_logic;
SIGNAL \qsig[6]~36\ : std_logic;
SIGNAL \qsig[7]~37_combout\ : std_logic;
SIGNAL \qsig[7]~38\ : std_logic;
SIGNAL \qsig[8]~39_combout\ : std_logic;
SIGNAL \qsig[8]~40\ : std_logic;
SIGNAL \qsig[9]~41_combout\ : std_logic;
SIGNAL \qsig[9]~42\ : std_logic;
SIGNAL \qsig[10]~43_combout\ : std_logic;
SIGNAL \qsig[10]~44\ : std_logic;
SIGNAL \qsig[11]~45_combout\ : std_logic;
SIGNAL \qsig[11]~46\ : std_logic;
SIGNAL \qsig[12]~47_combout\ : std_logic;
SIGNAL \qsig[12]~48\ : std_logic;
SIGNAL \qsig[13]~49_combout\ : std_logic;
SIGNAL \qsig[13]~50\ : std_logic;
SIGNAL \qsig[14]~51_combout\ : std_logic;
SIGNAL \qsig[14]~52\ : std_logic;
SIGNAL \qsig[15]~53_combout\ : std_logic;
SIGNAL \qsig[15]~54\ : std_logic;
SIGNAL \qsig[16]~55_combout\ : std_logic;
SIGNAL \qsig[16]~56\ : std_logic;
SIGNAL \qsig[17]~57_combout\ : std_logic;
SIGNAL \qsig[17]~58\ : std_logic;
SIGNAL \qsig[18]~59_combout\ : std_logic;
SIGNAL \qsig[18]~60\ : std_logic;
SIGNAL \qsig[19]~61_combout\ : std_logic;
SIGNAL \qsig[19]~62\ : std_logic;
SIGNAL \qsig[20]~63_combout\ : std_logic;
SIGNAL \qsig[20]~64\ : std_logic;
SIGNAL \qsig[21]~65_combout\ : std_logic;
SIGNAL \qsig[21]~66\ : std_logic;
SIGNAL \qsig[22]~67_combout\ : std_logic;
SIGNAL \qsig[22]~68\ : std_logic;
SIGNAL \qsig[23]~69_combout\ : std_logic;
SIGNAL \qsig[23]~70\ : std_logic;
SIGNAL \qsig[24]~71_combout\ : std_logic;
SIGNAL \qsig[24]~72\ : std_logic;
SIGNAL \qsig[25]~73_combout\ : std_logic;
SIGNAL qsig : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ck_50 <= ck_50;
ww_rst <= rst;
msb1 <= ww_msb1;
msb2 <= ww_msb2;
msb3 <= ww_msb3;
msb4 <= ww_msb4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\ck_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ck_50~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y44_N9
\msb1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => qsig(25),
	devoe => ww_devoe,
	o => \msb1~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\msb2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => qsig(24),
	devoe => ww_devoe,
	o => \msb2~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\msb3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => qsig(23),
	devoe => ww_devoe,
	o => \msb3~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\msb4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => qsig(22),
	devoe => ww_devoe,
	o => \msb4~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\ck_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ck_50,
	o => \ck_50~input_o\);

-- Location: CLKCTRL_G2
\ck_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ck_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ck_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y45_N4
\qsig[0]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[0]~75_combout\ = !qsig(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => qsig(0),
	combout => \qsig[0]~75_combout\);

-- Location: IOIBUF_X0_Y36_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X1_Y45_N5
\qsig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[0]~75_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(0));

-- Location: LCCOMB_X1_Y45_N8
\qsig[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[1]~25_combout\ = (qsig(1) & (qsig(0) $ (VCC))) # (!qsig(1) & (qsig(0) & VCC))
-- \qsig[1]~26\ = CARRY((qsig(1) & qsig(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => qsig(1),
	datab => qsig(0),
	datad => VCC,
	combout => \qsig[1]~25_combout\,
	cout => \qsig[1]~26\);

-- Location: FF_X1_Y45_N9
\qsig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[1]~25_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(1));

-- Location: LCCOMB_X1_Y45_N10
\qsig[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[2]~27_combout\ = (qsig(2) & (!\qsig[1]~26\)) # (!qsig(2) & ((\qsig[1]~26\) # (GND)))
-- \qsig[2]~28\ = CARRY((!\qsig[1]~26\) # (!qsig(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => qsig(2),
	datad => VCC,
	cin => \qsig[1]~26\,
	combout => \qsig[2]~27_combout\,
	cout => \qsig[2]~28\);

-- Location: FF_X1_Y45_N11
\qsig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[2]~27_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(2));

-- Location: LCCOMB_X1_Y45_N12
\qsig[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[3]~29_combout\ = (qsig(3) & (\qsig[2]~28\ $ (GND))) # (!qsig(3) & (!\qsig[2]~28\ & VCC))
-- \qsig[3]~30\ = CARRY((qsig(3) & !\qsig[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => qsig(3),
	datad => VCC,
	cin => \qsig[2]~28\,
	combout => \qsig[3]~29_combout\,
	cout => \qsig[3]~30\);

-- Location: FF_X1_Y45_N13
\qsig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[3]~29_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(3));

-- Location: LCCOMB_X1_Y45_N14
\qsig[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[4]~31_combout\ = (qsig(4) & (!\qsig[3]~30\)) # (!qsig(4) & ((\qsig[3]~30\) # (GND)))
-- \qsig[4]~32\ = CARRY((!\qsig[3]~30\) # (!qsig(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => qsig(4),
	datad => VCC,
	cin => \qsig[3]~30\,
	combout => \qsig[4]~31_combout\,
	cout => \qsig[4]~32\);

-- Location: FF_X1_Y45_N15
\qsig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[4]~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(4));

-- Location: LCCOMB_X1_Y45_N16
\qsig[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[5]~33_combout\ = (qsig(5) & (\qsig[4]~32\ $ (GND))) # (!qsig(5) & (!\qsig[4]~32\ & VCC))
-- \qsig[5]~34\ = CARRY((qsig(5) & !\qsig[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => qsig(5),
	datad => VCC,
	cin => \qsig[4]~32\,
	combout => \qsig[5]~33_combout\,
	cout => \qsig[5]~34\);

-- Location: FF_X1_Y45_N17
\qsig[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[5]~33_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(5));

-- Location: LCCOMB_X1_Y45_N18
\qsig[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[6]~35_combout\ = (qsig(6) & (!\qsig[5]~34\)) # (!qsig(6) & ((\qsig[5]~34\) # (GND)))
-- \qsig[6]~36\ = CARRY((!\qsig[5]~34\) # (!qsig(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => qsig(6),
	datad => VCC,
	cin => \qsig[5]~34\,
	combout => \qsig[6]~35_combout\,
	cout => \qsig[6]~36\);

-- Location: FF_X1_Y45_N19
\qsig[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[6]~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(6));

-- Location: LCCOMB_X1_Y45_N20
\qsig[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[7]~37_combout\ = (qsig(7) & (\qsig[6]~36\ $ (GND))) # (!qsig(7) & (!\qsig[6]~36\ & VCC))
-- \qsig[7]~38\ = CARRY((qsig(7) & !\qsig[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => qsig(7),
	datad => VCC,
	cin => \qsig[6]~36\,
	combout => \qsig[7]~37_combout\,
	cout => \qsig[7]~38\);

-- Location: FF_X1_Y45_N21
\qsig[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[7]~37_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(7));

-- Location: LCCOMB_X1_Y45_N22
\qsig[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[8]~39_combout\ = (qsig(8) & (!\qsig[7]~38\)) # (!qsig(8) & ((\qsig[7]~38\) # (GND)))
-- \qsig[8]~40\ = CARRY((!\qsig[7]~38\) # (!qsig(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => qsig(8),
	datad => VCC,
	cin => \qsig[7]~38\,
	combout => \qsig[8]~39_combout\,
	cout => \qsig[8]~40\);

-- Location: FF_X1_Y45_N23
\qsig[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[8]~39_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(8));

-- Location: LCCOMB_X1_Y45_N24
\qsig[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[9]~41_combout\ = (qsig(9) & (\qsig[8]~40\ $ (GND))) # (!qsig(9) & (!\qsig[8]~40\ & VCC))
-- \qsig[9]~42\ = CARRY((qsig(9) & !\qsig[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => qsig(9),
	datad => VCC,
	cin => \qsig[8]~40\,
	combout => \qsig[9]~41_combout\,
	cout => \qsig[9]~42\);

-- Location: FF_X1_Y45_N25
\qsig[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[9]~41_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(9));

-- Location: LCCOMB_X1_Y45_N26
\qsig[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[10]~43_combout\ = (qsig(10) & (!\qsig[9]~42\)) # (!qsig(10) & ((\qsig[9]~42\) # (GND)))
-- \qsig[10]~44\ = CARRY((!\qsig[9]~42\) # (!qsig(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => qsig(10),
	datad => VCC,
	cin => \qsig[9]~42\,
	combout => \qsig[10]~43_combout\,
	cout => \qsig[10]~44\);

-- Location: FF_X1_Y45_N27
\qsig[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[10]~43_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(10));

-- Location: LCCOMB_X1_Y45_N28
\qsig[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[11]~45_combout\ = (qsig(11) & (\qsig[10]~44\ $ (GND))) # (!qsig(11) & (!\qsig[10]~44\ & VCC))
-- \qsig[11]~46\ = CARRY((qsig(11) & !\qsig[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => qsig(11),
	datad => VCC,
	cin => \qsig[10]~44\,
	combout => \qsig[11]~45_combout\,
	cout => \qsig[11]~46\);

-- Location: FF_X1_Y45_N29
\qsig[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[11]~45_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(11));

-- Location: LCCOMB_X1_Y45_N30
\qsig[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[12]~47_combout\ = (qsig(12) & (!\qsig[11]~46\)) # (!qsig(12) & ((\qsig[11]~46\) # (GND)))
-- \qsig[12]~48\ = CARRY((!\qsig[11]~46\) # (!qsig(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => qsig(12),
	datad => VCC,
	cin => \qsig[11]~46\,
	combout => \qsig[12]~47_combout\,
	cout => \qsig[12]~48\);

-- Location: FF_X1_Y45_N31
\qsig[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[12]~47_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(12));

-- Location: LCCOMB_X1_Y44_N0
\qsig[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[13]~49_combout\ = (qsig(13) & (\qsig[12]~48\ $ (GND))) # (!qsig(13) & (!\qsig[12]~48\ & VCC))
-- \qsig[13]~50\ = CARRY((qsig(13) & !\qsig[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => qsig(13),
	datad => VCC,
	cin => \qsig[12]~48\,
	combout => \qsig[13]~49_combout\,
	cout => \qsig[13]~50\);

-- Location: FF_X1_Y44_N1
\qsig[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[13]~49_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(13));

-- Location: LCCOMB_X1_Y44_N2
\qsig[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[14]~51_combout\ = (qsig(14) & (!\qsig[13]~50\)) # (!qsig(14) & ((\qsig[13]~50\) # (GND)))
-- \qsig[14]~52\ = CARRY((!\qsig[13]~50\) # (!qsig(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => qsig(14),
	datad => VCC,
	cin => \qsig[13]~50\,
	combout => \qsig[14]~51_combout\,
	cout => \qsig[14]~52\);

-- Location: FF_X1_Y44_N3
\qsig[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[14]~51_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(14));

-- Location: LCCOMB_X1_Y44_N4
\qsig[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[15]~53_combout\ = (qsig(15) & (\qsig[14]~52\ $ (GND))) # (!qsig(15) & (!\qsig[14]~52\ & VCC))
-- \qsig[15]~54\ = CARRY((qsig(15) & !\qsig[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => qsig(15),
	datad => VCC,
	cin => \qsig[14]~52\,
	combout => \qsig[15]~53_combout\,
	cout => \qsig[15]~54\);

-- Location: FF_X1_Y44_N5
\qsig[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[15]~53_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(15));

-- Location: LCCOMB_X1_Y44_N6
\qsig[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[16]~55_combout\ = (qsig(16) & (!\qsig[15]~54\)) # (!qsig(16) & ((\qsig[15]~54\) # (GND)))
-- \qsig[16]~56\ = CARRY((!\qsig[15]~54\) # (!qsig(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => qsig(16),
	datad => VCC,
	cin => \qsig[15]~54\,
	combout => \qsig[16]~55_combout\,
	cout => \qsig[16]~56\);

-- Location: FF_X1_Y44_N7
\qsig[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[16]~55_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(16));

-- Location: LCCOMB_X1_Y44_N8
\qsig[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[17]~57_combout\ = (qsig(17) & (\qsig[16]~56\ $ (GND))) # (!qsig(17) & (!\qsig[16]~56\ & VCC))
-- \qsig[17]~58\ = CARRY((qsig(17) & !\qsig[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => qsig(17),
	datad => VCC,
	cin => \qsig[16]~56\,
	combout => \qsig[17]~57_combout\,
	cout => \qsig[17]~58\);

-- Location: FF_X1_Y44_N9
\qsig[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[17]~57_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(17));

-- Location: LCCOMB_X1_Y44_N10
\qsig[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[18]~59_combout\ = (qsig(18) & (!\qsig[17]~58\)) # (!qsig(18) & ((\qsig[17]~58\) # (GND)))
-- \qsig[18]~60\ = CARRY((!\qsig[17]~58\) # (!qsig(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => qsig(18),
	datad => VCC,
	cin => \qsig[17]~58\,
	combout => \qsig[18]~59_combout\,
	cout => \qsig[18]~60\);

-- Location: FF_X1_Y44_N11
\qsig[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[18]~59_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(18));

-- Location: LCCOMB_X1_Y44_N12
\qsig[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[19]~61_combout\ = (qsig(19) & (\qsig[18]~60\ $ (GND))) # (!qsig(19) & (!\qsig[18]~60\ & VCC))
-- \qsig[19]~62\ = CARRY((qsig(19) & !\qsig[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => qsig(19),
	datad => VCC,
	cin => \qsig[18]~60\,
	combout => \qsig[19]~61_combout\,
	cout => \qsig[19]~62\);

-- Location: FF_X1_Y44_N13
\qsig[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[19]~61_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(19));

-- Location: LCCOMB_X1_Y44_N14
\qsig[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[20]~63_combout\ = (qsig(20) & (!\qsig[19]~62\)) # (!qsig(20) & ((\qsig[19]~62\) # (GND)))
-- \qsig[20]~64\ = CARRY((!\qsig[19]~62\) # (!qsig(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => qsig(20),
	datad => VCC,
	cin => \qsig[19]~62\,
	combout => \qsig[20]~63_combout\,
	cout => \qsig[20]~64\);

-- Location: FF_X1_Y44_N15
\qsig[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[20]~63_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(20));

-- Location: LCCOMB_X1_Y44_N16
\qsig[21]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[21]~65_combout\ = (qsig(21) & (\qsig[20]~64\ $ (GND))) # (!qsig(21) & (!\qsig[20]~64\ & VCC))
-- \qsig[21]~66\ = CARRY((qsig(21) & !\qsig[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => qsig(21),
	datad => VCC,
	cin => \qsig[20]~64\,
	combout => \qsig[21]~65_combout\,
	cout => \qsig[21]~66\);

-- Location: FF_X1_Y44_N17
\qsig[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[21]~65_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(21));

-- Location: LCCOMB_X1_Y44_N18
\qsig[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[22]~67_combout\ = (qsig(22) & (!\qsig[21]~66\)) # (!qsig(22) & ((\qsig[21]~66\) # (GND)))
-- \qsig[22]~68\ = CARRY((!\qsig[21]~66\) # (!qsig(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => qsig(22),
	datad => VCC,
	cin => \qsig[21]~66\,
	combout => \qsig[22]~67_combout\,
	cout => \qsig[22]~68\);

-- Location: FF_X1_Y44_N19
\qsig[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[22]~67_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(22));

-- Location: LCCOMB_X1_Y44_N20
\qsig[23]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[23]~69_combout\ = (qsig(23) & (\qsig[22]~68\ $ (GND))) # (!qsig(23) & (!\qsig[22]~68\ & VCC))
-- \qsig[23]~70\ = CARRY((qsig(23) & !\qsig[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => qsig(23),
	datad => VCC,
	cin => \qsig[22]~68\,
	combout => \qsig[23]~69_combout\,
	cout => \qsig[23]~70\);

-- Location: FF_X1_Y44_N21
\qsig[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[23]~69_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(23));

-- Location: LCCOMB_X1_Y44_N22
\qsig[24]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[24]~71_combout\ = (qsig(24) & (!\qsig[23]~70\)) # (!qsig(24) & ((\qsig[23]~70\) # (GND)))
-- \qsig[24]~72\ = CARRY((!\qsig[23]~70\) # (!qsig(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => qsig(24),
	datad => VCC,
	cin => \qsig[23]~70\,
	combout => \qsig[24]~71_combout\,
	cout => \qsig[24]~72\);

-- Location: FF_X1_Y44_N23
\qsig[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[24]~71_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(24));

-- Location: LCCOMB_X1_Y44_N24
\qsig[25]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \qsig[25]~73_combout\ = \qsig[24]~72\ $ (!qsig(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => qsig(25),
	cin => \qsig[24]~72\,
	combout => \qsig[25]~73_combout\);

-- Location: FF_X1_Y44_N25
\qsig[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck_50~inputclkctrl_outclk\,
	d => \qsig[25]~73_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qsig(25));

ww_msb1 <= \msb1~output_o\;

ww_msb2 <= \msb2~output_o\;

ww_msb3 <= \msb3~output_o\;

ww_msb4 <= \msb4~output_o\;
END structure;


