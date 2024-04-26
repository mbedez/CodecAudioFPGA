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

-- DATE "04/26/2024 10:22:18"

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

ENTITY 	TP4_CODEC_audio IS
    PORT (
	LEDR : OUT std_logic_vector(17 DOWNTO 14);
	CLOCK_50 : IN std_logic
	);
END TP4_CODEC_audio;

-- Design Ports Information
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF TP4_CODEC_audio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 14);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|qsig[0]~75_combout\ : std_logic;
SIGNAL \inst|qsig[1]~25_combout\ : std_logic;
SIGNAL \inst|qsig[1]~26\ : std_logic;
SIGNAL \inst|qsig[2]~27_combout\ : std_logic;
SIGNAL \inst|qsig[2]~28\ : std_logic;
SIGNAL \inst|qsig[3]~29_combout\ : std_logic;
SIGNAL \inst|qsig[3]~30\ : std_logic;
SIGNAL \inst|qsig[4]~31_combout\ : std_logic;
SIGNAL \inst|qsig[4]~32\ : std_logic;
SIGNAL \inst|qsig[5]~33_combout\ : std_logic;
SIGNAL \inst|qsig[5]~34\ : std_logic;
SIGNAL \inst|qsig[6]~35_combout\ : std_logic;
SIGNAL \inst|qsig[6]~36\ : std_logic;
SIGNAL \inst|qsig[7]~37_combout\ : std_logic;
SIGNAL \inst|qsig[7]~38\ : std_logic;
SIGNAL \inst|qsig[8]~39_combout\ : std_logic;
SIGNAL \inst|qsig[8]~40\ : std_logic;
SIGNAL \inst|qsig[9]~41_combout\ : std_logic;
SIGNAL \inst|qsig[9]~42\ : std_logic;
SIGNAL \inst|qsig[10]~43_combout\ : std_logic;
SIGNAL \inst|qsig[10]~44\ : std_logic;
SIGNAL \inst|qsig[11]~45_combout\ : std_logic;
SIGNAL \inst|qsig[11]~46\ : std_logic;
SIGNAL \inst|qsig[12]~47_combout\ : std_logic;
SIGNAL \inst|qsig[12]~48\ : std_logic;
SIGNAL \inst|qsig[13]~49_combout\ : std_logic;
SIGNAL \inst|qsig[13]~50\ : std_logic;
SIGNAL \inst|qsig[14]~51_combout\ : std_logic;
SIGNAL \inst|qsig[14]~52\ : std_logic;
SIGNAL \inst|qsig[15]~53_combout\ : std_logic;
SIGNAL \inst|qsig[15]~54\ : std_logic;
SIGNAL \inst|qsig[16]~55_combout\ : std_logic;
SIGNAL \inst|qsig[16]~56\ : std_logic;
SIGNAL \inst|qsig[17]~57_combout\ : std_logic;
SIGNAL \inst|qsig[17]~58\ : std_logic;
SIGNAL \inst|qsig[18]~59_combout\ : std_logic;
SIGNAL \inst|qsig[18]~60\ : std_logic;
SIGNAL \inst|qsig[19]~61_combout\ : std_logic;
SIGNAL \inst|qsig[19]~62\ : std_logic;
SIGNAL \inst|qsig[20]~63_combout\ : std_logic;
SIGNAL \inst|qsig[20]~64\ : std_logic;
SIGNAL \inst|qsig[21]~65_combout\ : std_logic;
SIGNAL \inst|qsig[21]~66\ : std_logic;
SIGNAL \inst|qsig[22]~67_combout\ : std_logic;
SIGNAL \inst|qsig[22]~68\ : std_logic;
SIGNAL \inst|qsig[23]~69_combout\ : std_logic;
SIGNAL \inst|qsig[23]~70\ : std_logic;
SIGNAL \inst|qsig[24]~71_combout\ : std_logic;
SIGNAL \inst|qsig[24]~72\ : std_logic;
SIGNAL \inst|qsig[25]~73_combout\ : std_logic;
SIGNAL \inst|qsig\ : std_logic_vector(25 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|qsig\(25),
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|qsig\(24),
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|qsig\(23),
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|qsig\(22),
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X60_Y70_N4
\inst|qsig[0]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[0]~75_combout\ = !\inst|qsig\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|qsig\(0),
	combout => \inst|qsig[0]~75_combout\);

-- Location: FF_X60_Y70_N5
\inst|qsig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[0]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(0));

-- Location: LCCOMB_X60_Y70_N8
\inst|qsig[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[1]~25_combout\ = (\inst|qsig\(1) & (\inst|qsig\(0) $ (VCC))) # (!\inst|qsig\(1) & (\inst|qsig\(0) & VCC))
-- \inst|qsig[1]~26\ = CARRY((\inst|qsig\(1) & \inst|qsig\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(1),
	datab => \inst|qsig\(0),
	datad => VCC,
	combout => \inst|qsig[1]~25_combout\,
	cout => \inst|qsig[1]~26\);

-- Location: FF_X60_Y70_N9
\inst|qsig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(1));

-- Location: LCCOMB_X60_Y70_N10
\inst|qsig[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[2]~27_combout\ = (\inst|qsig\(2) & (!\inst|qsig[1]~26\)) # (!\inst|qsig\(2) & ((\inst|qsig[1]~26\) # (GND)))
-- \inst|qsig[2]~28\ = CARRY((!\inst|qsig[1]~26\) # (!\inst|qsig\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(2),
	datad => VCC,
	cin => \inst|qsig[1]~26\,
	combout => \inst|qsig[2]~27_combout\,
	cout => \inst|qsig[2]~28\);

-- Location: FF_X60_Y70_N11
\inst|qsig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(2));

-- Location: LCCOMB_X60_Y70_N12
\inst|qsig[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[3]~29_combout\ = (\inst|qsig\(3) & (\inst|qsig[2]~28\ $ (GND))) # (!\inst|qsig\(3) & (!\inst|qsig[2]~28\ & VCC))
-- \inst|qsig[3]~30\ = CARRY((\inst|qsig\(3) & !\inst|qsig[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(3),
	datad => VCC,
	cin => \inst|qsig[2]~28\,
	combout => \inst|qsig[3]~29_combout\,
	cout => \inst|qsig[3]~30\);

-- Location: FF_X60_Y70_N13
\inst|qsig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(3));

-- Location: LCCOMB_X60_Y70_N14
\inst|qsig[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[4]~31_combout\ = (\inst|qsig\(4) & (!\inst|qsig[3]~30\)) # (!\inst|qsig\(4) & ((\inst|qsig[3]~30\) # (GND)))
-- \inst|qsig[4]~32\ = CARRY((!\inst|qsig[3]~30\) # (!\inst|qsig\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(4),
	datad => VCC,
	cin => \inst|qsig[3]~30\,
	combout => \inst|qsig[4]~31_combout\,
	cout => \inst|qsig[4]~32\);

-- Location: FF_X60_Y70_N15
\inst|qsig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(4));

-- Location: LCCOMB_X60_Y70_N16
\inst|qsig[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[5]~33_combout\ = (\inst|qsig\(5) & (\inst|qsig[4]~32\ $ (GND))) # (!\inst|qsig\(5) & (!\inst|qsig[4]~32\ & VCC))
-- \inst|qsig[5]~34\ = CARRY((\inst|qsig\(5) & !\inst|qsig[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(5),
	datad => VCC,
	cin => \inst|qsig[4]~32\,
	combout => \inst|qsig[5]~33_combout\,
	cout => \inst|qsig[5]~34\);

-- Location: FF_X60_Y70_N17
\inst|qsig[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(5));

-- Location: LCCOMB_X60_Y70_N18
\inst|qsig[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[6]~35_combout\ = (\inst|qsig\(6) & (!\inst|qsig[5]~34\)) # (!\inst|qsig\(6) & ((\inst|qsig[5]~34\) # (GND)))
-- \inst|qsig[6]~36\ = CARRY((!\inst|qsig[5]~34\) # (!\inst|qsig\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(6),
	datad => VCC,
	cin => \inst|qsig[5]~34\,
	combout => \inst|qsig[6]~35_combout\,
	cout => \inst|qsig[6]~36\);

-- Location: FF_X60_Y70_N19
\inst|qsig[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(6));

-- Location: LCCOMB_X60_Y70_N20
\inst|qsig[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[7]~37_combout\ = (\inst|qsig\(7) & (\inst|qsig[6]~36\ $ (GND))) # (!\inst|qsig\(7) & (!\inst|qsig[6]~36\ & VCC))
-- \inst|qsig[7]~38\ = CARRY((\inst|qsig\(7) & !\inst|qsig[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(7),
	datad => VCC,
	cin => \inst|qsig[6]~36\,
	combout => \inst|qsig[7]~37_combout\,
	cout => \inst|qsig[7]~38\);

-- Location: FF_X60_Y70_N21
\inst|qsig[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(7));

-- Location: LCCOMB_X60_Y70_N22
\inst|qsig[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[8]~39_combout\ = (\inst|qsig\(8) & (!\inst|qsig[7]~38\)) # (!\inst|qsig\(8) & ((\inst|qsig[7]~38\) # (GND)))
-- \inst|qsig[8]~40\ = CARRY((!\inst|qsig[7]~38\) # (!\inst|qsig\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(8),
	datad => VCC,
	cin => \inst|qsig[7]~38\,
	combout => \inst|qsig[8]~39_combout\,
	cout => \inst|qsig[8]~40\);

-- Location: FF_X60_Y70_N23
\inst|qsig[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[8]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(8));

-- Location: LCCOMB_X60_Y70_N24
\inst|qsig[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[9]~41_combout\ = (\inst|qsig\(9) & (\inst|qsig[8]~40\ $ (GND))) # (!\inst|qsig\(9) & (!\inst|qsig[8]~40\ & VCC))
-- \inst|qsig[9]~42\ = CARRY((\inst|qsig\(9) & !\inst|qsig[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(9),
	datad => VCC,
	cin => \inst|qsig[8]~40\,
	combout => \inst|qsig[9]~41_combout\,
	cout => \inst|qsig[9]~42\);

-- Location: FF_X60_Y70_N25
\inst|qsig[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(9));

-- Location: LCCOMB_X60_Y70_N26
\inst|qsig[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[10]~43_combout\ = (\inst|qsig\(10) & (!\inst|qsig[9]~42\)) # (!\inst|qsig\(10) & ((\inst|qsig[9]~42\) # (GND)))
-- \inst|qsig[10]~44\ = CARRY((!\inst|qsig[9]~42\) # (!\inst|qsig\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(10),
	datad => VCC,
	cin => \inst|qsig[9]~42\,
	combout => \inst|qsig[10]~43_combout\,
	cout => \inst|qsig[10]~44\);

-- Location: FF_X60_Y70_N27
\inst|qsig[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(10));

-- Location: LCCOMB_X60_Y70_N28
\inst|qsig[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[11]~45_combout\ = (\inst|qsig\(11) & (\inst|qsig[10]~44\ $ (GND))) # (!\inst|qsig\(11) & (!\inst|qsig[10]~44\ & VCC))
-- \inst|qsig[11]~46\ = CARRY((\inst|qsig\(11) & !\inst|qsig[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(11),
	datad => VCC,
	cin => \inst|qsig[10]~44\,
	combout => \inst|qsig[11]~45_combout\,
	cout => \inst|qsig[11]~46\);

-- Location: FF_X60_Y70_N29
\inst|qsig[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[11]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(11));

-- Location: LCCOMB_X60_Y70_N30
\inst|qsig[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[12]~47_combout\ = (\inst|qsig\(12) & (!\inst|qsig[11]~46\)) # (!\inst|qsig\(12) & ((\inst|qsig[11]~46\) # (GND)))
-- \inst|qsig[12]~48\ = CARRY((!\inst|qsig[11]~46\) # (!\inst|qsig\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(12),
	datad => VCC,
	cin => \inst|qsig[11]~46\,
	combout => \inst|qsig[12]~47_combout\,
	cout => \inst|qsig[12]~48\);

-- Location: FF_X60_Y70_N31
\inst|qsig[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(12));

-- Location: LCCOMB_X60_Y69_N0
\inst|qsig[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[13]~49_combout\ = (\inst|qsig\(13) & (\inst|qsig[12]~48\ $ (GND))) # (!\inst|qsig\(13) & (!\inst|qsig[12]~48\ & VCC))
-- \inst|qsig[13]~50\ = CARRY((\inst|qsig\(13) & !\inst|qsig[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(13),
	datad => VCC,
	cin => \inst|qsig[12]~48\,
	combout => \inst|qsig[13]~49_combout\,
	cout => \inst|qsig[13]~50\);

-- Location: FF_X60_Y69_N1
\inst|qsig[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[13]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(13));

-- Location: LCCOMB_X60_Y69_N2
\inst|qsig[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[14]~51_combout\ = (\inst|qsig\(14) & (!\inst|qsig[13]~50\)) # (!\inst|qsig\(14) & ((\inst|qsig[13]~50\) # (GND)))
-- \inst|qsig[14]~52\ = CARRY((!\inst|qsig[13]~50\) # (!\inst|qsig\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(14),
	datad => VCC,
	cin => \inst|qsig[13]~50\,
	combout => \inst|qsig[14]~51_combout\,
	cout => \inst|qsig[14]~52\);

-- Location: FF_X60_Y69_N3
\inst|qsig[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[14]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(14));

-- Location: LCCOMB_X60_Y69_N4
\inst|qsig[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[15]~53_combout\ = (\inst|qsig\(15) & (\inst|qsig[14]~52\ $ (GND))) # (!\inst|qsig\(15) & (!\inst|qsig[14]~52\ & VCC))
-- \inst|qsig[15]~54\ = CARRY((\inst|qsig\(15) & !\inst|qsig[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(15),
	datad => VCC,
	cin => \inst|qsig[14]~52\,
	combout => \inst|qsig[15]~53_combout\,
	cout => \inst|qsig[15]~54\);

-- Location: FF_X60_Y69_N5
\inst|qsig[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[15]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(15));

-- Location: LCCOMB_X60_Y69_N6
\inst|qsig[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[16]~55_combout\ = (\inst|qsig\(16) & (!\inst|qsig[15]~54\)) # (!\inst|qsig\(16) & ((\inst|qsig[15]~54\) # (GND)))
-- \inst|qsig[16]~56\ = CARRY((!\inst|qsig[15]~54\) # (!\inst|qsig\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(16),
	datad => VCC,
	cin => \inst|qsig[15]~54\,
	combout => \inst|qsig[16]~55_combout\,
	cout => \inst|qsig[16]~56\);

-- Location: FF_X60_Y69_N7
\inst|qsig[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[16]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(16));

-- Location: LCCOMB_X60_Y69_N8
\inst|qsig[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[17]~57_combout\ = (\inst|qsig\(17) & (\inst|qsig[16]~56\ $ (GND))) # (!\inst|qsig\(17) & (!\inst|qsig[16]~56\ & VCC))
-- \inst|qsig[17]~58\ = CARRY((\inst|qsig\(17) & !\inst|qsig[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(17),
	datad => VCC,
	cin => \inst|qsig[16]~56\,
	combout => \inst|qsig[17]~57_combout\,
	cout => \inst|qsig[17]~58\);

-- Location: FF_X60_Y69_N9
\inst|qsig[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[17]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(17));

-- Location: LCCOMB_X60_Y69_N10
\inst|qsig[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[18]~59_combout\ = (\inst|qsig\(18) & (!\inst|qsig[17]~58\)) # (!\inst|qsig\(18) & ((\inst|qsig[17]~58\) # (GND)))
-- \inst|qsig[18]~60\ = CARRY((!\inst|qsig[17]~58\) # (!\inst|qsig\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(18),
	datad => VCC,
	cin => \inst|qsig[17]~58\,
	combout => \inst|qsig[18]~59_combout\,
	cout => \inst|qsig[18]~60\);

-- Location: FF_X60_Y69_N11
\inst|qsig[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[18]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(18));

-- Location: LCCOMB_X60_Y69_N12
\inst|qsig[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[19]~61_combout\ = (\inst|qsig\(19) & (\inst|qsig[18]~60\ $ (GND))) # (!\inst|qsig\(19) & (!\inst|qsig[18]~60\ & VCC))
-- \inst|qsig[19]~62\ = CARRY((\inst|qsig\(19) & !\inst|qsig[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(19),
	datad => VCC,
	cin => \inst|qsig[18]~60\,
	combout => \inst|qsig[19]~61_combout\,
	cout => \inst|qsig[19]~62\);

-- Location: FF_X60_Y69_N13
\inst|qsig[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[19]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(19));

-- Location: LCCOMB_X60_Y69_N14
\inst|qsig[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[20]~63_combout\ = (\inst|qsig\(20) & (!\inst|qsig[19]~62\)) # (!\inst|qsig\(20) & ((\inst|qsig[19]~62\) # (GND)))
-- \inst|qsig[20]~64\ = CARRY((!\inst|qsig[19]~62\) # (!\inst|qsig\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(20),
	datad => VCC,
	cin => \inst|qsig[19]~62\,
	combout => \inst|qsig[20]~63_combout\,
	cout => \inst|qsig[20]~64\);

-- Location: FF_X60_Y69_N15
\inst|qsig[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[20]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(20));

-- Location: LCCOMB_X60_Y69_N16
\inst|qsig[21]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[21]~65_combout\ = (\inst|qsig\(21) & (\inst|qsig[20]~64\ $ (GND))) # (!\inst|qsig\(21) & (!\inst|qsig[20]~64\ & VCC))
-- \inst|qsig[21]~66\ = CARRY((\inst|qsig\(21) & !\inst|qsig[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(21),
	datad => VCC,
	cin => \inst|qsig[20]~64\,
	combout => \inst|qsig[21]~65_combout\,
	cout => \inst|qsig[21]~66\);

-- Location: FF_X60_Y69_N17
\inst|qsig[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[21]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(21));

-- Location: LCCOMB_X60_Y69_N18
\inst|qsig[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[22]~67_combout\ = (\inst|qsig\(22) & (!\inst|qsig[21]~66\)) # (!\inst|qsig\(22) & ((\inst|qsig[21]~66\) # (GND)))
-- \inst|qsig[22]~68\ = CARRY((!\inst|qsig[21]~66\) # (!\inst|qsig\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(22),
	datad => VCC,
	cin => \inst|qsig[21]~66\,
	combout => \inst|qsig[22]~67_combout\,
	cout => \inst|qsig[22]~68\);

-- Location: FF_X60_Y69_N19
\inst|qsig[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[22]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(22));

-- Location: LCCOMB_X60_Y69_N20
\inst|qsig[23]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[23]~69_combout\ = (\inst|qsig\(23) & (\inst|qsig[22]~68\ $ (GND))) # (!\inst|qsig\(23) & (!\inst|qsig[22]~68\ & VCC))
-- \inst|qsig[23]~70\ = CARRY((\inst|qsig\(23) & !\inst|qsig[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(23),
	datad => VCC,
	cin => \inst|qsig[22]~68\,
	combout => \inst|qsig[23]~69_combout\,
	cout => \inst|qsig[23]~70\);

-- Location: FF_X60_Y69_N21
\inst|qsig[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[23]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(23));

-- Location: LCCOMB_X60_Y69_N22
\inst|qsig[24]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[24]~71_combout\ = (\inst|qsig\(24) & (!\inst|qsig[23]~70\)) # (!\inst|qsig\(24) & ((\inst|qsig[23]~70\) # (GND)))
-- \inst|qsig[24]~72\ = CARRY((!\inst|qsig[23]~70\) # (!\inst|qsig\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(24),
	datad => VCC,
	cin => \inst|qsig[23]~70\,
	combout => \inst|qsig[24]~71_combout\,
	cout => \inst|qsig[24]~72\);

-- Location: FF_X60_Y69_N23
\inst|qsig[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[24]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(24));

-- Location: LCCOMB_X60_Y69_N24
\inst|qsig[25]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig[25]~73_combout\ = \inst|qsig[24]~72\ $ (!\inst|qsig\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|qsig\(25),
	cin => \inst|qsig[24]~72\,
	combout => \inst|qsig[25]~73_combout\);

-- Location: FF_X60_Y69_N25
\inst|qsig[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig[25]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(25));

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;
END structure;


