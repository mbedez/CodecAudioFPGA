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

-- DATE "05/13/2024 08:49:28"

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
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 14)
	);
END TP4_CODEC_audio;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 14);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ledsig~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst11|counter[0]~27_combout\ : std_logic;
SIGNAL \inst11|counter[1]~9_combout\ : std_logic;
SIGNAL \inst11|counter[1]~10\ : std_logic;
SIGNAL \inst11|counter[2]~11_combout\ : std_logic;
SIGNAL \inst11|counter[2]~12\ : std_logic;
SIGNAL \inst11|counter[3]~13_combout\ : std_logic;
SIGNAL \inst11|counter[3]~14\ : std_logic;
SIGNAL \inst11|counter[4]~15_combout\ : std_logic;
SIGNAL \inst11|counter[4]~16\ : std_logic;
SIGNAL \inst11|counter[5]~17_combout\ : std_logic;
SIGNAL \inst11|counter[5]~18\ : std_logic;
SIGNAL \inst11|counter[6]~19_combout\ : std_logic;
SIGNAL \inst11|counter[6]~20\ : std_logic;
SIGNAL \inst11|counter[7]~21_combout\ : std_logic;
SIGNAL \inst11|counter[7]~22\ : std_logic;
SIGNAL \inst11|counter[8]~23_combout\ : std_logic;
SIGNAL \inst11|counter[8]~24\ : std_logic;
SIGNAL \inst11|counter[9]~25_combout\ : std_logic;
SIGNAL \inst11|Equal0~1_combout\ : std_logic;
SIGNAL \inst11|Equal0~0_combout\ : std_logic;
SIGNAL \inst11|Equal0~2_combout\ : std_logic;
SIGNAL \inst11|sample_sig[2]~feeder_combout\ : std_logic;
SIGNAL \inst11|sample_sig[1]~feeder_combout\ : std_logic;
SIGNAL \inst11|current_state~0_combout\ : std_logic;
SIGNAL \inst11|current_state~1_combout\ : std_logic;
SIGNAL \inst11|current_state~q\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|qsig~8_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|qsig~9_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|qsig~10_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|qsig~11_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|qsig~12_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|qsig~13_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|qsig~14_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|qsig~15_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|qsig~19_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|qsig~18_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|qsig~17_combout\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|qsig~16_combout\ : std_logic;
SIGNAL \inst|Add0~49\ : std_logic;
SIGNAL \inst|Add0~50_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|ledsig~0_combout\ : std_logic;
SIGNAL \inst|ledsig~feeder_combout\ : std_logic;
SIGNAL \inst|ledsig~q\ : std_logic;
SIGNAL \inst|ledsig~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|compteur|counter[0]~3_combout\ : std_logic;
SIGNAL \inst4|compteur|counter~0_combout\ : std_logic;
SIGNAL \inst4|compteur|counter[2]~1_combout\ : std_logic;
SIGNAL \inst4|compteur|counter~2_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst4|compteur|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|qsig\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst11|sample_sig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|ALT_INV_current_state~q\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst|ledsig~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|ledsig~q\);
\inst11|ALT_INV_current_state~q\ <= NOT \inst11|current_state~q\;
\inst4|ALT_INV_Mux0~0_combout\ <= NOT \inst4|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ledsig~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|qsig\(24),
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
	i => \inst|qsig\(23),
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
	i => \inst|qsig\(22),
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
	i => \inst|qsig\(21),
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

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X57_Y69_N4
\inst11|counter[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[0]~27_combout\ = !\inst11|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|counter\(0),
	combout => \inst11|counter[0]~27_combout\);

-- Location: FF_X57_Y69_N5
\inst11|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|counter[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(0));

-- Location: LCCOMB_X57_Y69_N6
\inst11|counter[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[1]~9_combout\ = (\inst11|counter\(1) & (\inst11|counter\(0) $ (VCC))) # (!\inst11|counter\(1) & (\inst11|counter\(0) & VCC))
-- \inst11|counter[1]~10\ = CARRY((\inst11|counter\(1) & \inst11|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(1),
	datab => \inst11|counter\(0),
	datad => VCC,
	combout => \inst11|counter[1]~9_combout\,
	cout => \inst11|counter[1]~10\);

-- Location: FF_X57_Y69_N7
\inst11|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|counter[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(1));

-- Location: LCCOMB_X57_Y69_N8
\inst11|counter[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[2]~11_combout\ = (\inst11|counter\(2) & (!\inst11|counter[1]~10\)) # (!\inst11|counter\(2) & ((\inst11|counter[1]~10\) # (GND)))
-- \inst11|counter[2]~12\ = CARRY((!\inst11|counter[1]~10\) # (!\inst11|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|counter\(2),
	datad => VCC,
	cin => \inst11|counter[1]~10\,
	combout => \inst11|counter[2]~11_combout\,
	cout => \inst11|counter[2]~12\);

-- Location: FF_X57_Y69_N9
\inst11|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|counter[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(2));

-- Location: LCCOMB_X57_Y69_N10
\inst11|counter[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[3]~13_combout\ = (\inst11|counter\(3) & (\inst11|counter[2]~12\ $ (GND))) # (!\inst11|counter\(3) & (!\inst11|counter[2]~12\ & VCC))
-- \inst11|counter[3]~14\ = CARRY((\inst11|counter\(3) & !\inst11|counter[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(3),
	datad => VCC,
	cin => \inst11|counter[2]~12\,
	combout => \inst11|counter[3]~13_combout\,
	cout => \inst11|counter[3]~14\);

-- Location: FF_X57_Y69_N11
\inst11|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|counter[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(3));

-- Location: LCCOMB_X57_Y69_N12
\inst11|counter[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[4]~15_combout\ = (\inst11|counter\(4) & (!\inst11|counter[3]~14\)) # (!\inst11|counter\(4) & ((\inst11|counter[3]~14\) # (GND)))
-- \inst11|counter[4]~16\ = CARRY((!\inst11|counter[3]~14\) # (!\inst11|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(4),
	datad => VCC,
	cin => \inst11|counter[3]~14\,
	combout => \inst11|counter[4]~15_combout\,
	cout => \inst11|counter[4]~16\);

-- Location: FF_X57_Y69_N13
\inst11|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|counter[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(4));

-- Location: LCCOMB_X57_Y69_N14
\inst11|counter[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[5]~17_combout\ = (\inst11|counter\(5) & (\inst11|counter[4]~16\ $ (GND))) # (!\inst11|counter\(5) & (!\inst11|counter[4]~16\ & VCC))
-- \inst11|counter[5]~18\ = CARRY((\inst11|counter\(5) & !\inst11|counter[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|counter\(5),
	datad => VCC,
	cin => \inst11|counter[4]~16\,
	combout => \inst11|counter[5]~17_combout\,
	cout => \inst11|counter[5]~18\);

-- Location: FF_X57_Y69_N15
\inst11|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|counter[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(5));

-- Location: LCCOMB_X57_Y69_N16
\inst11|counter[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[6]~19_combout\ = (\inst11|counter\(6) & (!\inst11|counter[5]~18\)) # (!\inst11|counter\(6) & ((\inst11|counter[5]~18\) # (GND)))
-- \inst11|counter[6]~20\ = CARRY((!\inst11|counter[5]~18\) # (!\inst11|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|counter\(6),
	datad => VCC,
	cin => \inst11|counter[5]~18\,
	combout => \inst11|counter[6]~19_combout\,
	cout => \inst11|counter[6]~20\);

-- Location: FF_X57_Y69_N17
\inst11|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|counter[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(6));

-- Location: LCCOMB_X57_Y69_N18
\inst11|counter[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[7]~21_combout\ = (\inst11|counter\(7) & (\inst11|counter[6]~20\ $ (GND))) # (!\inst11|counter\(7) & (!\inst11|counter[6]~20\ & VCC))
-- \inst11|counter[7]~22\ = CARRY((\inst11|counter\(7) & !\inst11|counter[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|counter\(7),
	datad => VCC,
	cin => \inst11|counter[6]~20\,
	combout => \inst11|counter[7]~21_combout\,
	cout => \inst11|counter[7]~22\);

-- Location: FF_X57_Y69_N19
\inst11|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|counter[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(7));

-- Location: LCCOMB_X57_Y69_N20
\inst11|counter[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[8]~23_combout\ = (\inst11|counter\(8) & (!\inst11|counter[7]~22\)) # (!\inst11|counter\(8) & ((\inst11|counter[7]~22\) # (GND)))
-- \inst11|counter[8]~24\ = CARRY((!\inst11|counter[7]~22\) # (!\inst11|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|counter\(8),
	datad => VCC,
	cin => \inst11|counter[7]~22\,
	combout => \inst11|counter[8]~23_combout\,
	cout => \inst11|counter[8]~24\);

-- Location: FF_X57_Y69_N21
\inst11|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|counter[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(8));

-- Location: LCCOMB_X57_Y69_N22
\inst11|counter[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[9]~25_combout\ = \inst11|counter\(9) $ (!\inst11|counter[8]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(9),
	cin => \inst11|counter[8]~24\,
	combout => \inst11|counter[9]~25_combout\);

-- Location: FF_X57_Y69_N23
\inst11|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|counter[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(9));

-- Location: LCCOMB_X57_Y69_N28
\inst11|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~1_combout\ = (!\inst11|counter\(4) & (\inst11|counter\(6) & (\inst11|counter\(5) & \inst11|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(4),
	datab => \inst11|counter\(6),
	datac => \inst11|counter\(5),
	datad => \inst11|counter\(7),
	combout => \inst11|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y69_N26
\inst11|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~0_combout\ = (\inst11|counter\(1) & (\inst11|counter\(2) & (\inst11|counter\(0) & !\inst11|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(1),
	datab => \inst11|counter\(2),
	datac => \inst11|counter\(0),
	datad => \inst11|counter\(3),
	combout => \inst11|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y69_N24
\inst11|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~2_combout\ = (\inst11|counter\(9) & (\inst11|Equal0~1_combout\ & (\inst11|Equal0~0_combout\ & \inst11|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(9),
	datab => \inst11|Equal0~1_combout\,
	datac => \inst11|Equal0~0_combout\,
	datad => \inst11|counter\(8),
	combout => \inst11|Equal0~2_combout\);

-- Location: FF_X57_Y69_N3
\inst11|sample_sig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	ena => \inst11|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|sample_sig\(3));

-- Location: LCCOMB_X56_Y69_N28
\inst11|sample_sig[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|sample_sig[2]~feeder_combout\ = \inst11|sample_sig\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|sample_sig\(3),
	combout => \inst11|sample_sig[2]~feeder_combout\);

-- Location: FF_X56_Y69_N29
\inst11|sample_sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|sample_sig[2]~feeder_combout\,
	ena => \inst11|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|sample_sig\(2));

-- Location: LCCOMB_X56_Y69_N22
\inst11|sample_sig[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|sample_sig[1]~feeder_combout\ = \inst11|sample_sig\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|sample_sig\(2),
	combout => \inst11|sample_sig[1]~feeder_combout\);

-- Location: FF_X56_Y69_N23
\inst11|sample_sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|sample_sig[1]~feeder_combout\,
	ena => \inst11|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|sample_sig\(1));

-- Location: FF_X56_Y69_N13
\inst11|sample_sig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst11|sample_sig\(1),
	sload => VCC,
	ena => \inst11|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|sample_sig\(0));

-- Location: LCCOMB_X56_Y69_N12
\inst11|current_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|current_state~0_combout\ = (!\inst11|sample_sig\(1) & (\inst11|sample_sig\(2) & (!\inst11|sample_sig\(0) & \inst11|sample_sig\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sample_sig\(1),
	datab => \inst11|sample_sig\(2),
	datac => \inst11|sample_sig\(0),
	datad => \inst11|sample_sig\(3),
	combout => \inst11|current_state~0_combout\);

-- Location: LCCOMB_X56_Y69_N20
\inst11|current_state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|current_state~1_combout\ = \inst11|current_state~q\ $ (((\inst11|current_state~0_combout\ & \inst11|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|current_state~0_combout\,
	datac => \inst11|current_state~q\,
	datad => \inst11|Equal0~2_combout\,
	combout => \inst11|current_state~1_combout\);

-- Location: FF_X56_Y69_N21
\inst11|current_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|current_state~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|current_state~q\);

-- Location: LCCOMB_X55_Y69_N6
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|qsig\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|qsig\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: FF_X55_Y69_N7
\inst|qsig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(0));

-- Location: LCCOMB_X55_Y69_N8
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|qsig\(1) & (!\inst|Add0~1\)) # (!\inst|qsig\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|qsig\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X55_Y69_N9
\inst|qsig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(1));

-- Location: LCCOMB_X55_Y69_N10
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|qsig\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|qsig\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|qsig\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X55_Y69_N11
\inst|qsig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(2));

-- Location: LCCOMB_X55_Y69_N12
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|qsig\(3) & (!\inst|Add0~5\)) # (!\inst|qsig\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|qsig\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X55_Y69_N13
\inst|qsig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(3));

-- Location: LCCOMB_X55_Y69_N14
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|qsig\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|qsig\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|qsig\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X55_Y69_N15
\inst|qsig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~8_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(4));

-- Location: LCCOMB_X55_Y69_N16
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|qsig\(5) & (!\inst|Add0~9\)) # (!\inst|qsig\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|qsig\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: FF_X55_Y69_N17
\inst|qsig[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~10_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(5));

-- Location: LCCOMB_X55_Y69_N18
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|qsig\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|qsig\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|qsig\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X55_Y69_N0
\inst|qsig~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig~8_combout\ = (\inst|Add0~12_combout\ & ((!\inst|Equal0~4_combout\) # (!\inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~12_combout\,
	datac => \inst|Equal0~7_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|qsig~8_combout\);

-- Location: FF_X55_Y69_N1
\inst|qsig[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig~8_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(6));

-- Location: LCCOMB_X55_Y69_N20
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|qsig\(7) & (!\inst|Add0~13\)) # (!\inst|qsig\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|qsig\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: FF_X55_Y69_N21
\inst|qsig[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(7));

-- Location: LCCOMB_X55_Y69_N22
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|qsig\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|qsig\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|qsig\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: FF_X55_Y69_N23
\inst|qsig[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~16_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(8));

-- Location: LCCOMB_X55_Y69_N24
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|qsig\(9) & (!\inst|Add0~17\)) # (!\inst|qsig\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|qsig\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: FF_X55_Y69_N25
\inst|qsig[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~18_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(9));

-- Location: LCCOMB_X55_Y69_N26
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|qsig\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|qsig\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|qsig\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: FF_X55_Y69_N27
\inst|qsig[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~20_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(10));

-- Location: LCCOMB_X55_Y69_N28
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|qsig\(11) & (!\inst|Add0~21\)) # (!\inst|qsig\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|qsig\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X56_Y68_N8
\inst|qsig~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig~9_combout\ = (\inst|Add0~22_combout\ & ((!\inst|Equal0~4_combout\) # (!\inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~7_combout\,
	datac => \inst|Add0~22_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|qsig~9_combout\);

-- Location: FF_X56_Y68_N9
\inst|qsig[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig~9_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(11));

-- Location: LCCOMB_X56_Y68_N10
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|qsig\(9) & (\inst|qsig\(11) & (!\inst|qsig\(10) & !\inst|qsig\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(9),
	datab => \inst|qsig\(11),
	datac => \inst|qsig\(10),
	datad => \inst|qsig\(8),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X55_Y69_N30
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|qsig\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|qsig\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|qsig\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X55_Y69_N4
\inst|qsig~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig~10_combout\ = (\inst|Add0~24_combout\ & ((!\inst|Equal0~4_combout\) # (!\inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~7_combout\,
	datac => \inst|Add0~24_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|qsig~10_combout\);

-- Location: FF_X55_Y69_N5
\inst|qsig[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig~10_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(12));

-- Location: LCCOMB_X55_Y68_N0
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|qsig\(13) & (!\inst|Add0~25\)) # (!\inst|qsig\(13) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|qsig\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X56_Y68_N20
\inst|qsig~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig~11_combout\ = (\inst|Add0~26_combout\ & ((!\inst|Equal0~7_combout\) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~4_combout\,
	datac => \inst|Add0~26_combout\,
	datad => \inst|Equal0~7_combout\,
	combout => \inst|qsig~11_combout\);

-- Location: FF_X56_Y68_N21
\inst|qsig[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig~11_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(13));

-- Location: LCCOMB_X55_Y68_N2
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|qsig\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|qsig\(14) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|qsig\(14) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X55_Y68_N28
\inst|qsig~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig~12_combout\ = (\inst|Add0~28_combout\ & ((!\inst|Equal0~4_combout\) # (!\inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~7_combout\,
	datac => \inst|Equal0~4_combout\,
	datad => \inst|Add0~28_combout\,
	combout => \inst|qsig~12_combout\);

-- Location: FF_X55_Y68_N29
\inst|qsig[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig~12_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(14));

-- Location: LCCOMB_X55_Y68_N4
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|qsig\(15) & (!\inst|Add0~29\)) # (!\inst|qsig\(15) & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|qsig\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: FF_X55_Y68_N5
\inst|qsig[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~30_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(15));

-- Location: LCCOMB_X56_Y68_N28
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|qsig\(12) & (\inst|qsig\(13) & (!\inst|qsig\(15) & \inst|qsig\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(12),
	datab => \inst|qsig\(13),
	datac => \inst|qsig\(15),
	datad => \inst|qsig\(14),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X56_Y69_N30
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|qsig\(2) & (\inst|qsig\(1) & (\inst|qsig\(0) & \inst|qsig\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(2),
	datab => \inst|qsig\(1),
	datac => \inst|qsig\(0),
	datad => \inst|qsig\(3),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X55_Y69_N2
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|qsig\(4) & (!\inst|qsig\(6) & (!\inst|qsig\(7) & \inst|qsig\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(4),
	datab => \inst|qsig\(6),
	datac => \inst|qsig\(7),
	datad => \inst|qsig\(5),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y68_N24
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~2_combout\ & (\inst|Equal0~3_combout\ & (\inst|Equal0~0_combout\ & \inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal0~3_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X55_Y68_N6
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|qsig\(16) & (\inst|Add0~31\ $ (GND))) # (!\inst|qsig\(16) & (!\inst|Add0~31\ & VCC))
-- \inst|Add0~33\ = CARRY((\inst|qsig\(16) & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X55_Y68_N26
\inst|qsig~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig~13_combout\ = (\inst|Add0~32_combout\ & ((!\inst|Equal0~4_combout\) # (!\inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~7_combout\,
	datac => \inst|Equal0~4_combout\,
	datad => \inst|Add0~32_combout\,
	combout => \inst|qsig~13_combout\);

-- Location: FF_X55_Y68_N27
\inst|qsig[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig~13_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(16));

-- Location: LCCOMB_X55_Y68_N8
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|qsig\(17) & (!\inst|Add0~33\)) # (!\inst|qsig\(17) & ((\inst|Add0~33\) # (GND)))
-- \inst|Add0~35\ = CARRY((!\inst|Add0~33\) # (!\inst|qsig\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: FF_X55_Y68_N9
\inst|qsig[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~34_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(17));

-- Location: LCCOMB_X55_Y68_N10
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|qsig\(18) & (\inst|Add0~35\ $ (GND))) # (!\inst|qsig\(18) & (!\inst|Add0~35\ & VCC))
-- \inst|Add0~37\ = CARRY((\inst|qsig\(18) & !\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X56_Y68_N18
\inst|qsig~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig~14_combout\ = (\inst|Add0~36_combout\ & ((!\inst|Equal0~4_combout\) # (!\inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~36_combout\,
	datab => \inst|Equal0~7_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|qsig~14_combout\);

-- Location: FF_X56_Y68_N19
\inst|qsig[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig~14_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(18));

-- Location: LCCOMB_X55_Y68_N12
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|qsig\(19) & (!\inst|Add0~37\)) # (!\inst|qsig\(19) & ((\inst|Add0~37\) # (GND)))
-- \inst|Add0~39\ = CARRY((!\inst|Add0~37\) # (!\inst|qsig\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(19),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: LCCOMB_X56_Y68_N30
\inst|qsig~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig~15_combout\ = (\inst|Add0~38_combout\ & ((!\inst|Equal0~4_combout\) # (!\inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~38_combout\,
	datab => \inst|Equal0~7_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|qsig~15_combout\);

-- Location: FF_X56_Y68_N31
\inst|qsig[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig~15_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(19));

-- Location: LCCOMB_X55_Y68_N14
\inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|qsig\(20) & (\inst|Add0~39\ $ (GND))) # (!\inst|qsig\(20) & (!\inst|Add0~39\ & VCC))
-- \inst|Add0~41\ = CARRY((\inst|qsig\(20) & !\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(20),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: LCCOMB_X56_Y68_N2
\inst|qsig~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig~19_combout\ = (\inst|Add0~40_combout\ & ((!\inst|Equal0~4_combout\) # (!\inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~40_combout\,
	datab => \inst|Equal0~7_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|qsig~19_combout\);

-- Location: FF_X56_Y68_N3
\inst|qsig[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig~19_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(20));

-- Location: LCCOMB_X55_Y68_N16
\inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|qsig\(21) & (!\inst|Add0~41\)) # (!\inst|qsig\(21) & ((\inst|Add0~41\) # (GND)))
-- \inst|Add0~43\ = CARRY((!\inst|Add0~41\) # (!\inst|qsig\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(21),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: LCCOMB_X55_Y68_N30
\inst|qsig~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig~18_combout\ = (\inst|Add0~42_combout\ & ((!\inst|Equal0~4_combout\) # (!\inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~7_combout\,
	datac => \inst|Equal0~4_combout\,
	datad => \inst|Add0~42_combout\,
	combout => \inst|qsig~18_combout\);

-- Location: FF_X55_Y68_N31
\inst|qsig[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig~18_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(21));

-- Location: LCCOMB_X55_Y68_N18
\inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\inst|qsig\(22) & (\inst|Add0~43\ $ (GND))) # (!\inst|qsig\(22) & (!\inst|Add0~43\ & VCC))
-- \inst|Add0~45\ = CARRY((\inst|qsig\(22) & !\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(22),
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: LCCOMB_X56_Y68_N6
\inst|qsig~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig~17_combout\ = (\inst|Add0~44_combout\ & ((!\inst|Equal0~7_combout\) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~4_combout\,
	datac => \inst|Equal0~7_combout\,
	datad => \inst|Add0~44_combout\,
	combout => \inst|qsig~17_combout\);

-- Location: FF_X56_Y68_N7
\inst|qsig[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig~17_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(22));

-- Location: LCCOMB_X55_Y68_N20
\inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|qsig\(23) & (!\inst|Add0~45\)) # (!\inst|qsig\(23) & ((\inst|Add0~45\) # (GND)))
-- \inst|Add0~47\ = CARRY((!\inst|Add0~45\) # (!\inst|qsig\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|qsig\(23),
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: FF_X55_Y68_N21
\inst|qsig[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~46_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(23));

-- Location: LCCOMB_X56_Y68_N26
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (\inst|qsig\(22) & (\inst|qsig\(20) & (\inst|qsig\(21) & !\inst|qsig\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(22),
	datab => \inst|qsig\(20),
	datac => \inst|qsig\(21),
	datad => \inst|qsig\(23),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X55_Y68_N22
\inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = (\inst|qsig\(24) & (\inst|Add0~47\ $ (GND))) # (!\inst|qsig\(24) & (!\inst|Add0~47\ & VCC))
-- \inst|Add0~49\ = CARRY((\inst|qsig\(24) & !\inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(24),
	datad => VCC,
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\,
	cout => \inst|Add0~49\);

-- Location: LCCOMB_X56_Y68_N4
\inst|qsig~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|qsig~16_combout\ = (\inst|Add0~48_combout\ & ((!\inst|Equal0~7_combout\) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~4_combout\,
	datac => \inst|Equal0~7_combout\,
	datad => \inst|Add0~48_combout\,
	combout => \inst|qsig~16_combout\);

-- Location: FF_X56_Y68_N5
\inst|qsig[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|qsig~16_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(24));

-- Location: LCCOMB_X55_Y68_N24
\inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~50_combout\ = \inst|Add0~49\ $ (\inst|qsig\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|qsig\(25),
	cin => \inst|Add0~49\,
	combout => \inst|Add0~50_combout\);

-- Location: FF_X55_Y68_N25
\inst|qsig[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~50_combout\,
	ena => \inst11|ALT_INV_current_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|qsig\(25));

-- Location: LCCOMB_X56_Y68_N12
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (\inst|qsig\(19) & (\inst|qsig\(18) & (\inst|qsig\(16) & !\inst|qsig\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|qsig\(19),
	datab => \inst|qsig\(18),
	datac => \inst|qsig\(16),
	datad => \inst|qsig\(17),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X56_Y68_N16
\inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (\inst|Equal0~6_combout\ & (!\inst|qsig\(25) & (\inst|qsig\(24) & \inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~6_combout\,
	datab => \inst|qsig\(25),
	datac => \inst|qsig\(24),
	datad => \inst|Equal0~5_combout\,
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X56_Y68_N22
\inst|ledsig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ledsig~0_combout\ = \inst|ledsig~q\ $ (((!\inst11|current_state~q\ & (\inst|Equal0~7_combout\ & \inst|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|current_state~q\,
	datab => \inst|Equal0~7_combout\,
	datac => \inst|ledsig~q\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|ledsig~0_combout\);

-- Location: LCCOMB_X56_Y68_N14
\inst|ledsig~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ledsig~feeder_combout\ = \inst|ledsig~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ledsig~0_combout\,
	combout => \inst|ledsig~feeder_combout\);

-- Location: FF_X56_Y68_N15
\inst|ledsig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|ledsig~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ledsig~q\);

-- Location: CLKCTRL_G11
\inst|ledsig~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|ledsig~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|ledsig~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y69_N12
\inst4|compteur|counter[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|compteur|counter[0]~3_combout\ = !\inst4|compteur|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|compteur|counter\(0),
	combout => \inst4|compteur|counter[0]~3_combout\);

-- Location: FF_X114_Y69_N13
\inst4|compteur|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ledsig~clkctrl_outclk\,
	d => \inst4|compteur|counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|compteur|counter\(0));

-- Location: LCCOMB_X114_Y69_N6
\inst4|compteur|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|compteur|counter~0_combout\ = (\inst4|compteur|counter\(1) & (((!\inst4|compteur|counter\(0))))) # (!\inst4|compteur|counter\(1) & (\inst4|compteur|counter\(0) & ((\inst4|compteur|counter\(2)) # (!\inst4|compteur|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|compteur|counter\(3),
	datab => \inst4|compteur|counter\(2),
	datac => \inst4|compteur|counter\(1),
	datad => \inst4|compteur|counter\(0),
	combout => \inst4|compteur|counter~0_combout\);

-- Location: FF_X114_Y69_N7
\inst4|compteur|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ledsig~clkctrl_outclk\,
	d => \inst4|compteur|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|compteur|counter\(1));

-- Location: LCCOMB_X114_Y69_N16
\inst4|compteur|counter[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|compteur|counter[2]~1_combout\ = \inst4|compteur|counter\(2) $ (((\inst4|compteur|counter\(1) & \inst4|compteur|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|compteur|counter\(1),
	datac => \inst4|compteur|counter\(2),
	datad => \inst4|compteur|counter\(0),
	combout => \inst4|compteur|counter[2]~1_combout\);

-- Location: FF_X114_Y69_N17
\inst4|compteur|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ledsig~clkctrl_outclk\,
	d => \inst4|compteur|counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|compteur|counter\(2));

-- Location: LCCOMB_X114_Y69_N22
\inst4|compteur|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|compteur|counter~2_combout\ = (\inst4|compteur|counter\(0) & ((\inst4|compteur|counter\(2) & (\inst4|compteur|counter\(3) $ (\inst4|compteur|counter\(1)))) # (!\inst4|compteur|counter\(2) & (\inst4|compteur|counter\(3) & 
-- \inst4|compteur|counter\(1))))) # (!\inst4|compteur|counter\(0) & (((\inst4|compteur|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|compteur|counter\(0),
	datab => \inst4|compteur|counter\(2),
	datac => \inst4|compteur|counter\(3),
	datad => \inst4|compteur|counter\(1),
	combout => \inst4|compteur|counter~2_combout\);

-- Location: FF_X114_Y69_N23
\inst4|compteur|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ledsig~clkctrl_outclk\,
	d => \inst4|compteur|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|compteur|counter\(3));

-- Location: LCCOMB_X114_Y69_N20
\inst4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst4|compteur|counter\(3)) # ((\inst4|compteur|counter\(2) & ((!\inst4|compteur|counter\(0)) # (!\inst4|compteur|counter\(1)))) # (!\inst4|compteur|counter\(2) & (\inst4|compteur|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|compteur|counter\(3),
	datab => \inst4|compteur|counter\(2),
	datac => \inst4|compteur|counter\(1),
	datad => \inst4|compteur|counter\(0),
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y69_N14
\inst4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (!\inst4|compteur|counter\(3) & ((\inst4|compteur|counter\(2) & (\inst4|compteur|counter\(1) & \inst4|compteur|counter\(0))) # (!\inst4|compteur|counter\(2) & ((\inst4|compteur|counter\(1)) # (\inst4|compteur|counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|compteur|counter\(3),
	datab => \inst4|compteur|counter\(2),
	datac => \inst4|compteur|counter\(1),
	datad => \inst4|compteur|counter\(0),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y69_N28
\inst4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst4|compteur|counter\(0)) # ((\inst4|compteur|counter\(1) & (\inst4|compteur|counter\(3))) # (!\inst4|compteur|counter\(1) & ((\inst4|compteur|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|compteur|counter\(3),
	datab => \inst4|compteur|counter\(2),
	datac => \inst4|compteur|counter\(1),
	datad => \inst4|compteur|counter\(0),
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y69_N10
\inst4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (!\inst4|compteur|counter\(3) & ((\inst4|compteur|counter\(2) & (\inst4|compteur|counter\(1) $ (!\inst4|compteur|counter\(0)))) # (!\inst4|compteur|counter\(2) & (!\inst4|compteur|counter\(1) & \inst4|compteur|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|compteur|counter\(3),
	datab => \inst4|compteur|counter\(2),
	datac => \inst4|compteur|counter\(1),
	datad => \inst4|compteur|counter\(0),
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y69_N8
\inst4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (!\inst4|compteur|counter\(3) & (!\inst4|compteur|counter\(2) & (\inst4|compteur|counter\(1) & !\inst4|compteur|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|compteur|counter\(3),
	datab => \inst4|compteur|counter\(2),
	datac => \inst4|compteur|counter\(1),
	datad => \inst4|compteur|counter\(0),
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y69_N26
\inst4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (!\inst4|compteur|counter\(3) & (\inst4|compteur|counter\(2) & (\inst4|compteur|counter\(1) $ (\inst4|compteur|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|compteur|counter\(3),
	datab => \inst4|compteur|counter\(2),
	datac => \inst4|compteur|counter\(1),
	datad => \inst4|compteur|counter\(0),
	combout => \inst4|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y69_N24
\inst4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (!\inst4|compteur|counter\(3) & (!\inst4|compteur|counter\(1) & (\inst4|compteur|counter\(2) $ (\inst4|compteur|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|compteur|counter\(3),
	datab => \inst4|compteur|counter\(2),
	datac => \inst4|compteur|counter\(1),
	datad => \inst4|compteur|counter\(0),
	combout => \inst4|Mux6~0_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;
END structure;


