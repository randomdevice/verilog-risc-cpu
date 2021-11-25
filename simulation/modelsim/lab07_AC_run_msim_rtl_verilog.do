transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab {C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab/alu.sv}
vlog -sv -work work +incdir+C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab {C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab/register_file.sv}
vlog -sv -work work +incdir+C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab {C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab/data_memory.sv}
vlog -sv -work work +incdir+C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab {C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab/MUX_MemtoReg.sv}
vlog -sv -work work +incdir+C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab {C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab/sign_extend.sv}
vlog -sv -work work +incdir+C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab {C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab/instruction_memory.sv}
vlog -sv -work work +incdir+C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab {C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab/pc.sv}
vlog -sv -work work +incdir+C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab {C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab/sevenseg.sv}

vlog -sv -work work +incdir+C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab {C:/Users/User/Documents/COLLEGE/FALL2021/DIGITAL_SYST_DESIGN/Labs/lab7/lab/pctestbench.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  pctestbench

add wave *
view structure
view signals
run -all
