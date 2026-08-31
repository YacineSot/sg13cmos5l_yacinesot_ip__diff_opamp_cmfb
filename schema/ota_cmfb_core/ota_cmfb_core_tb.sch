v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -100 0 -60 {lab=VDD}
N 20 -80 20 -50 {lab=EN}
N 20 50 20 110 {lab=Ibias}
N 0 60 0 90 {lab=VSS}
N 100 -10 160 -10 {lab=#net1}
N 100 10 160 10 {lab=#net2}
N -110 0 -70 0 {lab=Vcm_reg}
N -120 30 -80 30 {lab=Vinn}
N -120 -30 -80 -30 {lab=Vinp}
N 540 -780 580 -780 {lab=Vcm_reg}
N 540 -780 540 -750 {lab=Vcm_reg}
N 540 -690 540 -640 {lab=#net3}
N -180 -160 -130 -160 {lab=Voutn}
N -180 -140 -130 -140 {lab=Voutp}
N -320 -160 -300 -160 {lab=Vinp}
N -320 -140 -300 -140 {lab=Vinn}
N 110 -650 110 -610 {lab=VSS}
N 150 -640 150 -610 {lab=VSS}
N 110 -610 150 -610 {lab=VSS}
N 150 -610 150 -590 {lab=VSS}
N 110 -880 110 -840 {lab=VSS}
N 150 -880 150 -850 {lab=VSS}
N 110 -880 150 -880 {lab=VSS}
N 150 -900 150 -880 {lab=VSS}
N 150 -720 150 -700 {lab=Voutn}
N 150 -720 280 -720 {lab=Voutn}
N 150 -790 150 -770 {lab=Voutp}
N 150 -770 280 -770 {lab=Voutp}
N 340 -770 420 -770 {lab=Vcm_sense}
N 340 -720 420 -720 {lab=Vcm_sense}
N 220 -10 260 -10 {lab=Voutn}
N 220 10 260 10 {lab=Voutp}
N 420 -700 500 -700 {lab=Vcm_sense}
N 420 -770 420 -720 {lab=Vcm_sense}
N 420 -720 420 -700 {lab=Vcm_sense}
C {/foss/designs/Chipalooza2/schema/ota_cmfb_core/ota_cmfb_core.sym} 0 0 0 0 {name=x1}
C {vcvs_limit.sym} 540 -720 0 0 {name=alimit1 gain=1000 lower_limit=0 upper_limit=1.5}
C {lab_pin.sym} 0 -100 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} -110 0 0 0 {name=p2 lab=Vcm_reg}
C {lab_pin.sym} -120 30 0 0 {name=p3 lab=Vinn}
C {lab_pin.sym} -120 -30 0 0 {name=p4 lab=Vinp}
C {lab_pin.sym} 20 110 0 0 {name=p5 lab=Ibias}
C {lab_pin.sym} 260 -10 2 0 {name=p6 lab=Voutn}
C {lab_pin.sym} 260 10 0 1 {name=p7 lab=Voutp}
C {lab_pin.sym} 0 90 0 0 {name=p8 lab=VSS}
C {lab_pin.sym} 20 -80 0 1 {name=p9 lab=EN}
C {lab_pin.sym} 580 -780 0 1 {name=p12 lab=Vcm_reg}
C {lab_pin.sym} 500 -740 0 0 {name=p13 lab=Vcm}
C {lab_pin.sym} 540 -630 0 1 {name=p14 lab=VSS}
C {code_shown.sym} -1090 -440 0 0 {name=NETLIST only_toplevel=false value="
VSS VSS 0 0
VDD VDD VSS 1.5
VEN EN VSS 0
Vcm Vcm VSS \{vcm\}
Ibias VDD Ibias 2.5u
"}
C {code_shown.sym} -820 -450 0 0 {name=OP_SIM only_toplevel=false
format="tcleval( @value )" value="
.control
op
write @schname\\\\.raw
.endc
"
}
C {simulator_commands_shown.sym} -810 -680 0 0 {
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
C {devices/launcher.sym} 550 -100 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {code_shown.sym} -1100 -250 0 0 {name=AC_SIM only_toplevel=false value="
.control
ac dec 50 100 100G
let vout_diff = voutp-voutn
let vin_diff = vinp-vinn
let diff_gain=vout_diff/vin_diff
let op_mag=db(vout_diff)
let op_ph = 180*cph(vout_diff)/pi
plot op_mag op_ph
.endc
"
}
C {code_shown.sym} -1090 -650 0 0 {name=PARAMS only_toplevel=false value="
.option rshunt=1e9
.param vcm=0.2 cl=0.1p
.save all
"}
C {lab_pin.sym} -130 -160 2 0 {name=p21 lab=Voutn}
C {lab_pin.sym} -320 -160 2 1 {name=p22 lab=Vinp}
C {lab_pin.sym} -130 -140 0 1 {name=p23 lab=Voutp}
C {lab_pin.sym} -320 -140 0 0 {name=p24 lab=Vinn}
C {code_shown.sym} -500 -460 0 0 {name=LOAD only_toplevel=false value="
CL1 Voutp 0 \{cl\}
CL2 Voutn 0 \{cl\}
"
}
C {/foss/designs/Chipalooza2/schema/ac_diff_probe/ac_diff_probe.sym} -240 -150 0 0 {name=xprobe1 vcm=\{vcm\} vac=1
}
C {devices/code_shown.sym} -1110 -820 0 0 {name=SAVE only_toplevel=true
format="tcleval( @value )"
value="
.include @schname\\\\.save
"}
C {lab_pin.sym} 150 -720 0 0 {name=p10 lab=Voutn}
C {lab_pin.sym} 150 -770 2 1 {name=p11 lab=Voutp}
C {vcvs_limit.sym} 150 -670 0 0 {name=alimit2 gain=1 lower_limit=0 upper_limit=1.5
spice_ignore=true}
C {lab_pin.sym} 150 -590 0 1 {name=p15 lab=VSS}
C {vcvs_limit.sym} 150 -820 2 1 {name=alimit3 gain=1 lower_limit=0 upper_limit=1.5
spice_ignore=true}
C {lab_pin.sym} 150 -900 2 0 {name=p16 lab=VSS}
C {res.sym} 310 -770 1 0 {name=R1
value=40k
footprint=1206
device=resistor
m=1}
C {res.sym} 310 -720 1 0 {name=R2
value=40k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 420 -770 3 1 {name=p17 lab=Vcm_sense}
C {ammeter.sym} 190 -10 3 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 190 10 3 1 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {code_shown.sym} -680 -290 0 0 {name=NETLIST1 only_toplevel=false value="
Vinp Vinp 0 0.51
Vinn Vinn 0 0.52
"
spice_ignore=true}
C {launcher.sym} 550 -160 0 0 {name=h4
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
