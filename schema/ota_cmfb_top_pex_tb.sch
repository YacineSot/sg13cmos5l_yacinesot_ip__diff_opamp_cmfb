v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 4 -1236.736422473234 -700 3.263577526765857 620 {fill=0}
B 4 20 -250 540 20 {fill=0}
B 4 20 -550 540 -280 {fill=0}
B 4 20 210 1080 620 {fill=0}
B 4 20 40 540 190 {fill=0}
T {SPICE SIMULATION} -770 -680 0 0 0.4 0.4 {}
T {AC ANALYSIS PROBE} 30 -230 0 0 0.4 0.4 {}
T {CORE OPAMP} 310 -540 0 0 0.4 0.4 {}
T {MONTE CARLO PYTHON} 30 240 0 0 0.4 0.4 {}
T {DC ANALYSIS SINGLE TO DIFF} 20 40 0 0 0.4 0.4 {}
N 220 -520 220 -480 {lab=VDD}
N 240 -500 240 -470 {lab=EN}
N 240 -370 240 -310 {lab=Ibias}
N 220 -360 220 -330 {lab=VSS}
N 320 -430 380 -430 {lab=#net1}
N 320 -410 380 -410 {lab=#net2}
N 110 -420 150 -420 {lab=Vcm}
N 100 -390 140 -390 {lab=Vinn}
N 100 -450 140 -450 {lab=Vinp}
N 240 -100 290 -100 {lab=#net3}
N 240 -80 290 -80 {lab=#net4}
N 100 -100 120 -100 {lab=Vinp}
N 100 -80 120 -80 {lab=Vinn}
N 350 -100 420 -100 {lab=Voutn}
N 350 -80 420 -80 {lab=Voutp}
N 440 -430 480 -430 {lab=Voutp}
N 440 -410 480 -410 {lab=Voutn}
N 460 100 500 100 {lab=Voutp}
N 340 100 400 100 {lab=#net5}
N 210 100 280 100 {lab=Vinn}
N 100 100 150 100 {lab=Vt_n}
N 460 150 500 150 {lab=Voutn}
N 340 150 400 150 {lab=#net6}
N 210 150 280 150 {lab=Vinp}
N 100 150 150 150 {lab=Vt_p}
C {lab_pin.sym} 220 -520 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 110 -420 0 0 {name=p2 lab=Vcm}
C {lab_pin.sym} 100 -390 0 0 {name=p3 lab=Vinn}
C {lab_pin.sym} 100 -450 0 0 {name=p4 lab=Vinp}
C {lab_pin.sym} 240 -310 0 0 {name=p5 lab=Ibias}
C {lab_pin.sym} 480 -410 0 1 {name=p6 lab=Voutn}
C {lab_pin.sym} 480 -430 0 1 {name=p7 lab=Voutp}
C {lab_pin.sym} 220 -330 0 0 {name=p8 lab=VSS}
C {lab_pin.sym} 240 -500 0 1 {name=p9 lab=EN}
C {code_shown.sym} -780 -340 0 0 {name=NETLIST only_toplevel=false value="
VSS VSS 0 0
VDD VDD VSS 1.5
VEN EN VSS 1.2
Vcm Vcm VSS \{vcm\}
Ibias VDD Ibias 2.5u
"}
C {code_shown.sym} -340 380 0 0 {name=OP_SIM only_toplevel=false
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
C {simulator_commands_shown.sym} -780 -510 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerMOSCAP.lib moscap_tt
.lib cornerCAP.lib cap_typ
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"
      }
C {devices/launcher.sym} -1150 370 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {code_shown.sym} -520 -360 0 0 {name=AC_SIM only_toplevel=false value="
.control
ac dec 50 100 100G
let vout_diff = voutp-voutn
let vin_diff = vinp-vinn
let diff_gain=vout_diff/vin_diff
let op_mag=db(diff_gain)
let op_ph = 180*cph(diff_gain)/pi + 180
let vcm_1 = (voutp+voutn)/2
let vcm_err = mag((vcm_1 - \{vcm\}))[0]
echo results_save_begin
meas ac dc_gain find op_mag when frequency=1000
meas ac gain_margin find op_mag when op_ph=0
meas ac phase_margin find op_ph when op_mag=0
meas ac bw_3db find frequency when op_mag=dc_gain-3
meas ac Gain_BW find frequency when op_mag=0
print vcm_err
echo results_save_end
plot op_mag op_ph
.endc
"
}
C {code_shown.sym} -420 -620 0 0 {name=PARAMS only_toplevel=false value="
.option rshunt=1e9
.options method=gear
.param vcm=0.75 vcm_in=0.75 cl=0.1p
.save all
"}
C {lab_pin.sym} 420 -100 2 0 {name=p21 lab=Voutn}
C {lab_pin.sym} 100 -100 2 1 {name=p22 lab=Vinp}
C {lab_pin.sym} 420 -80 0 1 {name=p23 lab=Voutp}
C {lab_pin.sym} 100 -80 0 0 {name=p24 lab=Vinn}
C {code_shown.sym} -420 -490 0 0 {name=LOAD only_toplevel=false value="
CL1 Voutp 0 \{cl\}
CL2 Voutn 0 \{cl\}
"
}
C {ac_diff_probe/ac_diff_probe.sym} 180 -90 0 0 {name=xprobe1 vcm=\{vcm_in\} vac=1
}
C {devices/code_shown.sym} -870 -660 0 0 {name=SAVE only_toplevel=true
format="tcleval( @value )"
value="
.include @schname\\\\.save
.include /run/media/yacinesot/My_Files/XschemDesigns/designs/Chipalooza2/pex/ota_cmfb_top_pex.spice/final.gds.spice
"}
C {ammeter.sym} 410 -430 3 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 410 -410 3 1 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {ammeter.sym} 320 -80 1 0 {name=Vmeas4 savecurrent=true spice_ignore=0}
C {ammeter.sym} 320 -100 1 1 {name=Vmeas5 savecurrent=true spice_ignore=0}
C {code_shown.sym} -360 120 0 0 {name=TRAN_SIM only_toplevel=false value="
Vinp Vinp 0 sin(\{vcm_in\} 100u 1000k)
Vinn Vinn 0 sin(\{vcm_in\} -100u 1000k)
.control
tran 100n 1m
plot Vinp Vinn Voutp Voutn
plot Vinp-Vinn Voutp-Voutn
.endc
"
spice_ignore=true}
C {launcher.sym} -1150 290 0 0 {name=h4
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
C {code_shown.sym} -1030 40 0 0 {name=AC_LOOP_SIM only_toplevel=false value="
.control
set gain_pcmd = \\"\\"
set ph_pcmd = \\"\\"
set ph_mrg = \\"\\"
set vcm_param = vcm_in
set curplot = new
compose vcm_vec start=0 stop=1.5 step=0.1
foreach vcm_val $&vcm_vec
	reset
	alterparam $vcm_param =$vcm_val
	ac dec 50 100 100G
	let cur_vcm=$vcm_val
	let vout_diff = voutp-voutn
	let vin_diff = vinp-vinn
	let diff_gain=vout_diff/vin_diff
	let op_mag=db(diff_gain)
	let op_ph = 180*cph(-diff_gain)/pi
        set gain_pcmd = \\" $gain_pcmd \{$curplot\}.op_mag \\"
	set ph_pcmd = \\" $ph_pcmd \{$curplot\}.op_ph \\"
	meas ac phase_margin find op_ph when op_mag=0
	if $&phase_margin
		set ph_mrg = \\" $ph_mrg \{$curplot\}.phase_margin \\"
	end
	set ph_mrg = \\" $ph_mrg  \{$curplot\}.cur_vcm \\"
end
//set nolegend
plot $gain_pcmd
plot $ph_pcmd
print $ph_mrg
.endc
"
spice_ignore=true}
C {code_shown.sym} 30 310 0 0 {name=MC_SETTINGS
only_toplevel=false
value="
**nr_workers=1
**nr_mc_sims=100

**results_plot_begin
**dc_gain
**gain_margin
**phase_margin
**bw_3db
**Gain_BW
**vcm_err
**results_plot_end
"
}
C {launcher.sym} 100 585 0 0 {name=h1
descr=SimulatePARALLEL
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

# Create FET and BIP .save file
exec mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
exec python3 $\{PDK_ROOT\}/$\{PDK\}/libs.tech/xschem/sg13g2_tests/ngspice_parallel_mc.py [file tail [xschem get current_name]]
"
spice_ignore=true}
C {simulator_commands_shown.sym} 305 265 0 0 {name=MC_SIM
simulator=ngspice
only_toplevel=false 
value="
Vinp Vinp 0 \{vcm_in + 100u\}
Vinn Vinn 0 \{vcm_in - 100u\} 
.control
set num_threads 8
op
run
let vcm_err = vcm-vcm_calc
let gain = (voutp-voutn)/(vinp-vinn)
echo results_save_begin
print vcm_calc vcm_err gain
echo results_save_end

.endc
"
spice_ignore=true}
C {simulator_commands_shown.sym} 630 270 0 0 {
name=Libs_MISMATCH
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt_mismatch
.lib cornerMOShv.lib mos_tt_mismatch
.lib cornerMOSCAP.lib moscap_tt
.lib cornerCAP.lib cap_typ
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"
      spice_ignore=true}
C {ammeter.sym} 430 100 1 1 {name=Vmeas6 savecurrent=true spice_ignore=true}
C {lab_pin.sym} 500 100 0 1 {name=p18 lab=Voutp}
C {lab_pin.sym} 240 100 1 0 {name=p19 lab=Vinn}
C {code_shown.sym} -1200 -370 0 0 {name=DC_LOOP_SIM only_toplevel=false value="
Vt_p Vt_p 0 0
Vt_n Vt_n 0 0
.control
set curplot = new
set plt_voutp = \\"\\"
set plt_voutn = \\"\\"
set plt_vt_p = \\"\\"
set plt_vdiff = \\"\\"
set plt_voutpn = \\"\\"
compose vcm_vec start=0 stop=1.5 step=0.1
foreach vcm_val $&vcm_vec
	alterparam vcm = $vcm_val
	reset
	dc Vt_p 0 1.5 0.01
	let Vout = v(Voutp) - v(Voutn)
	set plt_voutp = \\" \{$plt_voutp\} \{$curplot\}.voutp \\"
	set plt_voutn = \\" \{$plt_voutn\} \{$curplot\}.voutn \\"
	set plt_vdiff = \\" \{$plt_vdiff\} \{$curplot\}.vout \\"
	set plt_voutpn = \\" \{$plt_voutpn\} \{$curplot\}.voutp \{$curplot\}.voutn \\"
end
plot $plt_voutpn
plot $plt_vdiff
.endc
"
spice_ignore=true}
C {code_shown.sym} -1200 -660 0 0 {name=DC_SIM only_toplevel=false value="
Vt_p Vt_p 0 0
Vt_n Vt_n 0 0

.control
dc Vt_p 0 1.5 0.01

let Vout = Voutp - Voutn
plot Vt_p Voutp Voutn
plot Vt_p Vout

.endc
"
spice_ignore=true}
C {res.sym} 310 100 1 1 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {res.sym} 180 100 1 0 {name=R2
value=500k
footprint=1206
device=resistor
m=1}
C {ammeter.sym} 430 150 1 0 {name=Vmeas7 savecurrent=true spice_ignore=true}
C {lab_pin.sym} 500 150 2 0 {name=p26 lab=Voutn}
C {lab_pin.sym} 240 150 1 1 {name=p27 lab=Vinp}
C {res.sym} 310 150 1 0 {name=R3
value=500k
footprint=1206
device=resistor
m=1}
C {res.sym} 180 150 1 0 {name=R4
value=500k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 100 100 1 1 {name=p33 lab=Vt_n}
C {lab_pin.sym} 100 150 3 0 {name=p34 lab=Vt_p}
C {pex/ota_cmfb_top_pex.spice/ota_cmfb_top.sym} 220 -420 0 0 {name=X1}
