v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -410 110 -380 110 {lab=Voutn}
N -260 110 -230 110 {lab=Voutp}
N -320 150 -320 180 {lab=VCM_ORG}
N -340 70 -340 80 {lab=VDD}
N -300 70 -300 80 {lab=VSS}
N -290 150 -290 180 {lab=VREF_SH}
N -320 30 -320 80 {lab=VCM}
C {code_shown.sym} -1060 -110 0 0 {name=NETLIST only_toplevel=false value="
VSS VSS 0 0
VDD VDD VSS 1.5
VEN EN VSS 0
Vcm Vcm VSS \{vcm\}
Ibias VDD Ibias 2.5u
Voutp Voutp 0 0.35
Voutn Voutn 0 1.15
"}
C {code_shown.sym} -790 -120 0 0 {name=OP_SIM only_toplevel=false value="
.control
op
write @schname\\\\.raw
.endc
"
}
C {simulator_commands_shown.sym} -660 -320 0 0 {
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
C {devices/launcher.sym} 20 -20 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {launcher.sym} 30 -100 0 0 {name=h4
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
mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
C {code_shown.sym} -1080 120 0 0 {name=AC_SIM spiceignore=1 only_toplevel=false value="
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
spice_ignore=true}
C {code_shown.sym} -1060 -320 0 0 {name=PARAMS only_toplevel=false value="
.option rshunt=1e9
.param vcm=0.75 cl=0.1p
.save all
"}
C {code_shown.sym} -571.09375 -146.5625 0 0 {name=LOAD only_toplevel=false value="
CL1 Voutp 0 \{cl\}
CL2 Voutn 0 \{cl\}
"
spice_ignore=true}
C {/foss/designs/Chipalooza2/schema/ota_cmfb_cm_sense/ota_cmfb_cm_sense.sym} -320 110 0 0 {name=xvcm1}
C {lab_pin.sym} -410 110 0 0 {name=p25 lab=Voutn}
C {lab_pin.sym} -230 110 2 0 {name=p26 lab=Voutp}
C {lab_pin.sym} -320 180 1 1 {name=p29 lab=VCM_ORG}
C {devices/code_shown.sym} -1100 -410 0 0 {name=SAVE only_toplevel=true
format="tcleval( @value )"
value="
.include @schname\\\\.save
"}
C {lab_pin.sym} -340 70 0 0 {name=p1 lab=VDD}
C {lab_pin.sym} -300 70 0 1 {name=p2 lab=VSS}
C {lab_pin.sym} -290 180 3 0 {name=p3 lab=VREF_SH}
C {lab_pin.sym} -320 30 3 1 {name=p4 lab=VCM}
