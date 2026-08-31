v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -50 -100 -50 -70 {lab=VDD}
N -50 50 -50 90 {lab=VSS}
N -30 40 -30 70 {lab=Ibias}
N -150 -10 -130 -10 {lab=#net1}
N 50 -10 70 -10 {lab=Vout}
N 310 -250 310 -220 {lab=Ibias}
N 350 -190 370 -190 {lab=Ibias}
N 370 -250 370 -190 {lab=Ibias}
N 310 -250 370 -250 {lab=Ibias}
N 310 -280 310 -250 {lab=Ibias}
N 310 -190 310 -130 {lab=VSS}
N -320 -10 -210 -10 {lab=Vin}
C {code_shown.sym} -1200 -220 0 0 {name=NETLIST only_toplevel=false value="
VSS VSS 0 0
VDD VDD VSS 1.5
VEN EN VSS 0
Vcm Vcm VSS \{vcm\}
Ibias VDD Ibias 2.5u
"}
C {code_shown.sym} -930 -230 0 0 {name=OP_SIM only_toplevel=false
format="tcleval( @value )" value="
.control
op
write @schname\\\\.raw
.endc
"
}
C {simulator_commands_shown.sym} -920 -460 0 0 {
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
C {devices/launcher.sym} 440 120 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {launcher.sym} 430 30 0 0 {name=h4
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
C {code_shown.sym} -1210 -30 0 0 {name=AC_SIM only_toplevel=false value="
.control
ac dec 50 100 100G
let gain=v(vout)/v(vin)
let op_mag=db(gain)
let op_ph = 180*cph(gain)/pi
plot op_mag op_ph
.endc
"
}
C {code_shown.sym} -1200 -430 0 0 {name=PARAMS only_toplevel=false value="
.option rshunt=1e9
.param vcm=0.75 cl=0.1p
.save all
"}
C {code_shown.sym} -610 -240 0 0 {name=LOAD only_toplevel=false value="
RL1 Vout 0 10k
"
}
C {devices/code_shown.sym} -1220 -600 0 0 {name=SAVE only_toplevel=true
format="tcleval( @value )"
value="
.include @schname\\\\.save
"}
C {code_shown.sym} -920 -90 0 0 {name=NETLIST1 only_toplevel=false value="
Vin Vin 0 \{vcm\} ac 1
"
}
C {lab_pin.sym} -50 -100 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} -320 -10 0 0 {name=p2 lab=Vin
}
C {lab_pin.sym} 70 -10 0 1 {name=p3 lab=Vout}
C {lab_pin.sym} -50 90 0 1 {name=p5 lab=VSS}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 330 -190 0 1 {name=M6
l=1u
w=10u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
annot_side=2
spiceprefix=X
}
C {lab_pin.sym} 310 -130 0 1 {name=p7 lab=VSS}
C {lab_pin.sym} 310 -280 0 1 {name=p6 lab=Ibias}
C {lab_pin.sym} -30 70 0 1 {name=p4 lab=Ibias}
C {ammeter.sym} -180 -10 1 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {/foss/designs/Chipalooza2/schema/ota_cmfb_core/ota_cmfb_core_push_pull_output_stage.sym} -50 -10 0 0 {name=xsf1}
