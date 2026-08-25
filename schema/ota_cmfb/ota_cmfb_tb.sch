v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {fill=0}
F {}
E {}
B 4 -1210 -690 -550 330 {fill=0}
B 4 -470 -650 -10 -210 {fill=0}
B 4 20 -650 710 -210 {fill=0}
B 4 -470 -190 50 80 {fill=0}
B 4 70 -190 590 80 {fill=0}
T {SPICE SIMULATION} -1180 -670 0 0 0.4 0.4 {}
T {IMPEDENCE AMPLIFIER BEHAVIOUR} -450 -630 0 0 0.4 0.4 {}
T {FEEDBACK LOOP} 320 -620 0 0 0.4 0.4 {}
T {AC ANALYSIS PROBE} -460 -170 0 0 0.4 0.4 {}
T {CORE OTA} 360 -180 0 0 0.4 0.4 {}
N 270 -160 270 -120 {lab=VDD}
N 290 -140 290 -110 {lab=EN}
N 290 -10 290 50 {lab=Ibias}
N 270 0 270 30 {lab=VSS}
N 370 -70 430 -70 {lab=#net1}
N 370 -50 430 -50 {lab=#net2}
N 160 -60 200 -60 {lab=Vcm_reg}
N 150 -30 190 -30 {lab=Vinn}
N 150 -90 190 -90 {lab=Vinp}
N -250 -40 -200 -40 {lab=#net3}
N -250 -20 -200 -20 {lab=#net4}
N -390 -40 -370 -40 {lab=Vinp}
N -390 -20 -370 -20 {lab=Vinn}
N 210 -540 210 -500 {lab=#net5}
N 210 -380 210 -340 {lab=#net6}
N -270 -320 -270 -280 {lab=VSS}
N -230 -310 -230 -280 {lab=VSS}
N -270 -280 -230 -280 {lab=VSS}
N -230 -280 -230 -260 {lab=VSS}
N -270 -550 -270 -510 {lab=VSS}
N -230 -550 -230 -520 {lab=VSS}
N -270 -550 -230 -550 {lab=VSS}
N -230 -570 -230 -550 {lab=VSS}
N -330 -470 -270 -470 {lab=Voutp}
N -330 -360 -270 -360 {lab=Voutn}
N -230 -390 -230 -370 {lab=Voutn_f}
N -230 -390 -190 -390 {lab=Voutn_f}
N -230 -460 -230 -440 {lab=Voutp_f}
N -230 -440 -190 -440 {lab=Voutp_f}
N 150 -420 180 -420 {lab=VSS}
N 150 -460 180 -460 {lab=VDD}
N 210 -630 210 -600 {lab=Voutp_f}
N 210 -280 210 -240 {lab=Voutn_f}
N 250 -440 330 -440 {lab=Vcm_calc}
N 320 -390 320 -350 {lab=Vcm}
N 320 -390 400 -390 {lab=Vcm}
N 330 -450 330 -440 {lab=Vcm_calc}
N 330 -450 400 -450 {lab=Vcm_calc}
N 480 -520 480 -480 {lab=VDD}
N 500 -500 500 -470 {lab=EN}
N 500 -370 500 -310 {lab=Ibias}
N 480 -360 480 -330 {lab=VSS}
N 580 -420 590 -420 {lab=Vcm_reg}
N -140 -40 -70 -40 {lab=Voutn}
N -140 -20 -70 -20 {lab=Voutp}
N 490 -70 530 -70 {lab=Voutn}
N 490 -50 530 -50 {lab=Voutp}
C {/foss/designs/Chipalooza2/schema/ota_cmfb_core/ota_cmfb_core.sym} 270 -60 0 0 {name=x1}
C {lab_pin.sym} 270 -160 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 160 -60 0 0 {name=p2 lab=Vcm_reg}
C {lab_pin.sym} 150 -30 0 0 {name=p3 lab=Vinn}
C {lab_pin.sym} 150 -90 0 0 {name=p4 lab=Vinp}
C {lab_pin.sym} 290 50 0 0 {name=p5 lab=Ibias}
C {lab_pin.sym} 530 -70 0 1 {name=p6 lab=Voutn}
C {lab_pin.sym} 530 -50 0 1 {name=p7 lab=Voutp}
C {lab_pin.sym} 270 30 0 0 {name=p8 lab=VSS}
C {lab_pin.sym} 290 -140 0 1 {name=p9 lab=EN}
C {lab_pin.sym} 320 -350 0 0 {name=p13 lab=Vcm}
C {code_shown.sym} -1190 -300 0 0 {name=NETLIST only_toplevel=false value="
VSS VSS 0 0
VDD VDD VSS 1.5
VEN EN VSS 0
Vcm Vcm VSS \{vcm\}
Ibias VDD Ibias 2.5u
"}
C {code_shown.sym} -1190 -130 0 0 {name=OP_SIM only_toplevel=false
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
C {simulator_commands_shown.sym} -1210 -460 0 0 {
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
C {lab_pin.sym} 280 -440 1 0 {name=p17 lab=Vcm_calc}
C {devices/launcher.sym} -750 210 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {launcher.sym} -760 120 0 0 {name=h4
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET .save file
exec mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
C {code_shown.sym} -890 -140 0 0 {name=AC_SIM only_toplevel=false value="
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
C {code_shown.sym} -850 -580 0 0 {name=PARAMS only_toplevel=false value="
.option rshunt=1e9
.param vcm=0.75 cl=0.1p
.save all
"}
C {lab_pin.sym} -70 -40 2 0 {name=p21 lab=Voutn}
C {lab_pin.sym} -390 -40 2 1 {name=p22 lab=Vinp}
C {lab_pin.sym} -70 -20 0 1 {name=p23 lab=Voutp}
C {lab_pin.sym} -390 -20 0 0 {name=p24 lab=Vinn}
C {code_shown.sym} -900 -300 0 0 {name=LOAD only_toplevel=false value="
CL1 Voutp 0 \{cl\}
CL2 Voutn 0 \{cl\}
"
}
C {/foss/designs/Chipalooza2/schema/ac_diff_probe/ac_diff_probe.sym} -310 -30 0 0 {name=xprobe1 vcm=\{vcm\} vac=1
}
C {/foss/designs/Chipalooza2/schema/ota_cmfb_cm_sense/ota_cmfb_cm_sense.sym} 210 -440 3 1 {name=xvcm1}
C {devices/code_shown.sym} -1190 -580 0 0 {name=SAVE only_toplevel=true
format="tcleval( @value )"
value="
.include @schname\\\\.save
"}
C {lab_pin.sym} -330 -360 0 0 {name=p10 lab=Voutn}
C {lab_pin.sym} -330 -470 2 1 {name=p11 lab=Voutp}
C {vcvs_limit.sym} -230 -340 0 0 {name=alimit2 gain=1 lower_limit=0 upper_limit=1.5}
C {lab_pin.sym} -230 -260 0 1 {name=p15 lab=VSS}
C {vcvs_limit.sym} -230 -490 2 1 {name=alimit3 gain=1 lower_limit=0 upper_limit=1.5}
C {lab_pin.sym} -230 -570 2 0 {name=p16 lab=VSS}
C {lab_pin.sym} -190 -440 2 0 {name=p18 lab=Voutp_f}
C {lab_pin.sym} -190 -390 2 0 {name=p19 lab=Voutn_f}
C {lab_pin.sym} 150 -460 0 0 {name=p26 lab=VDD}
C {lab_pin.sym} 150 -420 2 1 {name=p27 lab=VSS}
C {ammeter.sym} 210 -570 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 210 -310 2 1 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {/foss/designs/Chipalooza2/schema/ota_cmfb_fbota/ota_cmfb_fbota.sym} 480 -420 0 0 {name=xota1}
C {lab_pin.sym} 480 -520 0 1 {name=p12 lab=VDD}
C {lab_pin.sym} 500 -500 0 1 {name=p14 lab=EN}
C {lab_pin.sym} 500 -310 0 0 {name=p28 lab=Ibias}
C {lab_pin.sym} 480 -330 0 0 {name=p29 lab=VSS}
C {lab_pin.sym} 590 -420 0 1 {name=p30 lab=Vcm_reg}
C {lab_pin.sym} 210 -630 2 0 {name=p20 lab=Voutp_f
}
C {lab_pin.sym} 210 -240 2 0 {name=p25 lab=Voutn_f
}
C {ammeter.sym} 460 -70 3 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 460 -50 3 1 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {ammeter.sym} -170 -20 1 0 {name=Vmeas4 savecurrent=true spice_ignore=0}
C {ammeter.sym} -170 -40 1 1 {name=Vmeas5 savecurrent=true spice_ignore=0}
C {code_shown.sym} -1200 130 0 0 {name=TRAN_SIM only_toplevel=false value="
Vinp Vinp 0 sin(\{vcm\} 100u 100)
Vinn Vinn 0 sin(\{vcm\} -100u 100)
.control
tran 100u 100m
plot Vinp Vinn Voutp Voutn
plot Vinp-Vinn Voutp-Voutn
.endc
"
spice_ignore=true}
C {lab_pin.sym} 210 -610 2 1 {name=p31 lab=Voutp
spice_ignore=true}
C {lab_pin.sym} 210 -270 0 0 {name=p32 lab=Voutn
spice_ignore=true}
