v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 70 30 110 {lab=VDD}
N 50 90 50 120 {lab=EN}
N 50 220 50 280 {lab=Ibias}
N 30 230 30 260 {lab=VSS}
N 130 170 190 170 {lab=#net1}
N -90 200 -50 200 {lab=Vinn}
N -90 140 -50 140 {lab=Vcm}
N 250 170 290 170 {lab=Vout}
N -170 50 -130 50 {lab=Vout}
N -170 30 -170 50 {lab=Vout}
N -250 50 -210 50 {lab=Vinn}
N -210 30 -210 50 {lab=Vinn}
N 730 90 730 120 {lab=Ibias}
N 770 150 790 150 {lab=Ibias}
N 790 90 790 150 {lab=Ibias}
N 730 90 790 90 {lab=Ibias}
N 730 60 730 90 {lab=Ibias}
N 730 150 730 210 {lab=VSS}
N 790 150 810 150 {lab=Ibias}
C {lab_pin.sym} 30 70 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} -90 200 0 0 {name=p3 lab=Vinn}
C {lab_pin.sym} -90 140 0 0 {name=p4 lab=Vcm}
C {lab_pin.sym} 730 60 0 0 {name=p5 lab=Ibias}
C {lab_pin.sym} 290 170 0 1 {name=p7 lab=Vout}
C {lab_pin.sym} 30 260 0 0 {name=p8 lab=VSS}
C {lab_pin.sym} 50 90 0 1 {name=p9 lab=EN}
C {code_shown.sym} -1060 -80 0 0 {name=NETLIST only_toplevel=false value="
VSS VSS 0 0
VDD VDD VSS 1.5
VEN EN VSS 0
Vcm Vcm VSS \{vcm\}
Ibias VDD Ibias 2.5u
"}
C {code_shown.sym} -790 -90 0 0 {name=OP_SIM only_toplevel=false
format="tcleval( @value )" value="
.control
op
write @schname\\\\.raw
.endc
"
}
C {simulator_commands_shown.sym} -660 -290 0 0 {
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
C {devices/launcher.sym} 180 -120 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {launcher.sym} 180 -210 0 0 {name=h4
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
C {code_shown.sym} -1050 80 0 0 {name=AC_SIM only_toplevel=false value="
.control
ac dec 50 100 100G
let op_mag=db(vout)
let op_ph = 180*cph(vout)/pi
plot op_mag op_ph
.endc
"
}
C {code_shown.sym} -1060 -290 0 0 {name=PARAMS only_toplevel=false value="
.option rshunt=1e9
.param vcm=0.75 cl=0.1p vac=1
.save all
"}
C {code_shown.sym} -470 -100 0 0 {name=LOAD only_toplevel=false value="
CL1 Vout 0 \{cl\}
"
}
C {devices/code_shown.sym} -1080 -460 0 0 {name=SAVE only_toplevel=true
format="tcleval( @value )"
value="
.include @schname\\\\.save
"}
C {ammeter.sym} 220 170 3 1 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {code_shown.sym} -650 70 0 0 {name=NETLIST1 only_toplevel=false value="
Vinp Vinp 0 0.51
Vinn Vinn 0 0.52
"
spice_ignore=true}
C {/foss/designs/Chipalooza2/schema/ac_probe/ac_probe.sym} -190 10 0 0 {name=xprobe2 vcm=\{vcm\} vac=\{vac\}
}
C {/foss/designs/Chipalooza2/schema/ota_cmfb_fbota/ota_cmfb_fbota.sym} 30 170 0 0 {name=xota1}
C {lab_pin.sym} -130 50 0 1 {name=p2 lab=Vout}
C {lab_pin.sym} -250 50 0 0 {name=p6 lab=Vinn}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 750 150 0 1 {name=M6
l=10u
w=0.5u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
annot_side=1
spiceprefix=X
}
C {lab_pin.sym} 50 280 0 0 {name=p10 lab=Ibias}
C {lab_pin.sym} 730 210 0 0 {name=p11 lab=VSS}
