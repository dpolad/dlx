for {set i 2.4} {$i < 3.6} {set i [expr $i+0.1]} {
	remove_design -designs
	elaborate TOP_LEVEL -architecture ARCH -library DEFAULT
	set_clock_gating_style -sequential latch
	create_clock -name "clk" -period $i clock
	insert_clock_gating
	propagate_constraints -gate_clock
	compile_ultra -no_autoungroup
	report_timing > reports/dlx_ultra_clockgating_[expr $i*10]00_timing.txt
	report_power > reports/dlx_ultra_clockgating_[expr $i*10]00_power.txt
	write -hierarchy -format vhdl -output postsynth/dlx_ultra_clockgating_[expr $i*10]00.vhdl
	write -hierarchy -format verilog -output postsynth/dlx_ultra_clockgating_[expr $i*10]00.v
	write -hierarchy -format ddc -output postsynth/dlx_ultra_clockgating_[expr $i*10]00.ddc
	write_sdc postsynth/dlx_ultra_clockgating_[expr $i*10]00.sdc
}

