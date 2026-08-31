v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 4 -1360 -690 -570 460 {fill=0}
B 4 -530 -690 -70 -250 {fill=0}
B 4 -40 -690 650 -250 {fill=0}
B 4 -530 -230 -10 40 {fill=0}
B 4 10 -230 530 40 {fill=0}
T {SPICE SIMULATION} -1350 -680 0 0 0.4 0.4 {}
T {IMPEDENCE AMPLIFIER BEHAVIOUR} -510 -670 0 0 0.4 0.4 {}
T {FEEDBACK LOOP} 260 -660 0 0 0.4 0.4 {}
T {AC ANALYSIS PROBE} -520 -210 0 0 0.4 0.4 {}
T {CORE OPAMP} 300 -220 0 0 0.4 0.4 {}
T {DISABLED} -510 -640 0 0 0.4 0.4 {}
N 210 -200 210 -160 {lab=VDD}
N 230 -180 230 -150 {lab=EN}
N 230 -50 230 10 {lab=Ibias}
N 210 -40 210 -10 {lab=VSS}
N 310 -110 370 -110 {lab=#net1}
N 310 -90 370 -90 {lab=#net2}
N 100 -100 140 -100 {lab=Vcm_reg}
N 90 -70 130 -70 {lab=Vinn}
N 90 -130 130 -130 {lab=Vinp}
N -310 -80 -260 -80 {lab=#net3}
N -310 -60 -260 -60 {lab=#net4}
N -450 -80 -430 -80 {lab=Vinp}
N -450 -60 -430 -60 {lab=Vinn}
N 150 -580 150 -540 {lab=#net5}
N 150 -420 150 -380 {lab=#net6}
N -330 -360 -330 -320 {lab=VSS}
N -290 -350 -290 -320 {lab=VSS}
N -330 -320 -290 -320 {lab=VSS}
N -290 -320 -290 -300 {lab=VSS}
N -330 -590 -330 -550 {lab=VSS}
N -290 -590 -290 -560 {lab=VSS}
N -330 -590 -290 -590 {lab=VSS}
N -290 -610 -290 -590 {lab=VSS}
N -390 -510 -330 -510 {lab=Voutp}
N -390 -400 -330 -400 {lab=Voutn}
N 150 -670 150 -640 {lab=Voutp}
N 150 -320 150 -280 {lab=Voutn}
N 190 -480 270 -480 {lab=Vcm_calc}
N 270 -430 340 -430 {lab=Vcm_calc}
N 270 -490 270 -480 {lab=Vcm_calc}
N 420 -560 420 -520 {lab=VDD}
N 440 -540 440 -510 {lab=EN}
N 440 -410 440 -350 {lab=Ibias}
N 420 -400 420 -370 {lab=VSS}
N 520 -460 530 -460 {lab=Vcm_reg}
N -200 -80 -130 -80 {lab=Voutn}
N -200 -60 -130 -60 {lab=Voutp}
N 430 -110 470 -110 {lab=Voutn}
N 430 -90 470 -90 {lab=Voutp}
N 340 -510 340 -490 {lab=Vcm}
N 330 -510 340 -510 {lab=Vcm}
N 270 -480 270 -430 {lab=Vcm_calc}
N 260 -430 270 -430 {lab=Vcm_calc}
C {/foss/designs/Chipalooza2/schema/ota_cmfb_core/ota_cmfb_core.sym} 210 -100 0 0 {name=x1}
C {lab_pin.sym} 210 -200 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 100 -100 0 0 {name=p2 lab=Vcm_reg}
C {lab_pin.sym} 90 -70 0 0 {name=p3 lab=Vinn}
C {lab_pin.sym} 90 -130 0 0 {name=p4 lab=Vinp}
C {lab_pin.sym} 230 10 0 0 {name=p5 lab=Ibias}
C {lab_pin.sym} 470 -110 0 1 {name=p6 lab=Voutn}
C {lab_pin.sym} 470 -90 0 1 {name=p7 lab=Voutp}
C {lab_pin.sym} 210 -10 0 0 {name=p8 lab=VSS}
C {lab_pin.sym} 230 -180 0 1 {name=p9 lab=EN}
C {lab_pin.sym} 330 -510 0 0 {name=p13 lab=Vcm}
C {code_shown.sym} -1350 -330 0 0 {name=NETLIST only_toplevel=false value="
VSS VSS 0 0
VDD VDD VSS 1.5
VEN EN VSS 0
Vcm Vcm VSS \{vcm\}
Ibias VDD Ibias 2.5u
"}
C {code_shown.sym} -1350 -180 0 0 {name=OP_SIM only_toplevel=false
format="tcleval( @value )" value="
.control
op
let ro_n = voutn/i(vmeas2)
let ro_p = voutp/i(vmeas3)
print ro_n ro_p
write @schname\\\\.raw
.endc
"
}
C {simulator_commands_shown.sym} -1350 -500 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
.include /foss/designs/Chipalooza2/schema/tian_probe/tian_subckt.lib
"
      }
C {lab_pin.sym} 220 -480 1 0 {name=p17 lab=Vcm_calc}
C {devices/launcher.sym} -770 420 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {code_shown.sym} -920 -250 0 0 {name=AC_SIM only_toplevel=false value="
.control
ac dec 50 100 100G
let vout_diff = voutp-voutn
let vin_diff = vinp-vinn
let diff_gain=vout_diff/vin_diff
let op_mag=db(diff_gain)
let op_ph = 180*cph(-diff_gain)/pi
plot op_mag op_ph
.endc
"
}
C {code_shown.sym} -930 -580 0 0 {name=PARAMS only_toplevel=false value="
.option rshunt=1e9
.param vcm=0.6 vcm_in=0.75 cl=0.5p
.save all
"}
C {lab_pin.sym} -130 -80 2 0 {name=p21 lab=Voutn}
C {lab_pin.sym} -450 -80 2 1 {name=p22 lab=Vinp}
C {lab_pin.sym} -130 -60 0 1 {name=p23 lab=Voutp}
C {lab_pin.sym} -450 -60 0 0 {name=p24 lab=Vinn}
C {code_shown.sym} -920 -340 0 0 {name=LOAD only_toplevel=false value="
CL1 Voutp 0 \{cl\}
CL2 Voutn 0 \{cl\}
"
}
C {/foss/designs/Chipalooza2/schema/ac_diff_probe/ac_diff_probe.sym} -370 -70 0 0 {name=xprobe1 vcm=\{vcm_in\} vac=1
}
C {/foss/designs/Chipalooza2/schema/ota_cmfb_cm_sense/ota_cmfb_cm_sense.sym} 150 -480 3 1 {name=xvcm1}
C {devices/code_shown.sym} -1340 -600 0 0 {name=SAVE only_toplevel=true
format="tcleval( @value )"
value="
.include @schname\\\\.save
"}
C {lab_pin.sym} -390 -400 0 0 {name=p10 lab=Voutn}
C {lab_pin.sym} -390 -510 2 1 {name=p11 lab=Voutp}
C {vcvs_limit.sym} -290 -380 0 0 {name=alimit2 gain=1 lower_limit=0 upper_limit=1.5
spice_ignore=true}
C {lab_pin.sym} -290 -300 0 1 {name=p15 lab=VSS}
C {vcvs_limit.sym} -290 -530 2 1 {name=alimit3 gain=1 lower_limit=0 upper_limit=1.5
spice_ignore=true}
C {lab_pin.sym} -290 -610 2 0 {name=p16 lab=VSS}
C {ammeter.sym} 150 -610 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 150 -350 2 1 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {/foss/designs/Chipalooza2/schema/ota_cmfb_fbota/ota_cmfb_fbota.sym} 420 -460 0 0 {name=xota1}
C {lab_pin.sym} 420 -560 0 1 {name=p12 lab=VDD}
C {lab_pin.sym} 440 -540 0 1 {name=p14 lab=EN}
C {lab_pin.sym} 440 -350 0 0 {name=p28 lab=Ibias}
C {lab_pin.sym} 420 -370 0 0 {name=p29 lab=VSS}
C {lab_pin.sym} 530 -460 0 1 {name=p30 lab=Vcm_reg}
C {lab_pin.sym} 150 -670 2 0 {name=p20 lab=Voutp_f
spice_ignore=true}
C {lab_pin.sym} 150 -280 2 0 {name=p25 lab=Voutn_f
spice_ignore=true}
C {ammeter.sym} 400 -110 3 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 400 -90 3 1 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {ammeter.sym} -230 -60 1 0 {name=Vmeas4 savecurrent=true spice_ignore=0}
C {ammeter.sym} -230 -80 1 1 {name=Vmeas5 savecurrent=true spice_ignore=0}
C {code_shown.sym} -930 110 0 0 {name=TRAN_SIM only_toplevel=false value="
Vinp Vinp 0 sin(\{vcm_in\} 100u 1k)
Vinn Vinn 0 sin(\{vcm_in\} -100u 1k)
.control
tran 100u 100m
plot Vinp Vinn Voutp Voutn
plot Vinp-Vinn Voutp-Voutn
.endc
"
spice_ignore=true}
C {lab_pin.sym} 150 -650 2 1 {name=p31 lab=Voutp
}
C {lab_pin.sym} 150 -310 0 0 {name=p32 lab=Voutn
}
C {launcher.sym} -770 340 0 0 {name=h4
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
save_params
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET .save file
mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
C {code_shown.sym} -1350 20 0 0 {name=AC_LOOP only_toplevel=false value="
.control
set gain_pcmd = \\"\\"
set ph_pcmd = \\"\\"
let run_num = 1
compose vcm_vec start=0 stop=1.5 step=0.1
foreach vcm_val $&vcm_vec
	reset
	alterparam vcm=$vcm_val
	ac dec 50 100 100G
	let vout_diff = voutp-voutn
	let vin_diff = vinp-vinn
	let diff_gain=vout_diff/vin_diff
	let op_mag=db(diff_gain)
	let op_ph = 180*cph(-diff_gain)/pi
        set gain_pcmd = \\" $gain_pcmd ac\{$&run_num\}.op_mag \\"
	set ph_pcmd = \\" $ph_pcmd ac\{$&run_num\}.op_ph \\"
	let run_num = run_num + 1
end
//set nolegend
plot $gain_pcmd
plot $ph_pcmd
.endc
"
spice_ignore=true}
