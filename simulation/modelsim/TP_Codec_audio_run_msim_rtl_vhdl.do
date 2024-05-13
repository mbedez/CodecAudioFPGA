transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/mboulogne/Documents/FPGA/Project/TP_Codec_audio/key_sampler.vhd}

