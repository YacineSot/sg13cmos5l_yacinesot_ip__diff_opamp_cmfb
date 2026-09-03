v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 4 -1786.736422473234 -690 -546.7364224732341 630 {fill=0}
B 4 -530 -690 -70 -250 {fill=0}
B 4 -40 -690 650 -250 {fill=0}
B 4 -530 -240 -10 30 {fill=0}
B 4 10 -240 530 30 {fill=0}
B 4 -530 220 530 630 {fill=0}
B 4 -530 50 -10 200 {fill=0}
T {SPICE SIMULATION} -1320 -670 0 0 0.4 0.4 {}
T {IMPEDENCE AMPLIFIER BEHAVIOUR} -510 -670 0 0 0.4 0.4 {}
T {FEEDBACK LOOP} 260 -660 0 0 0.4 0.4 {}
T {AC ANALYSIS PROBE} -520 -220 0 0 0.4 0.4 {}
T {CORE OPAMP} 300 -230 0 0 0.4 0.4 {}
T {DISABLED} -510 -640 0 0 0.4 0.4 {}
T {MONTE CARLO PYTHON} -520 250 0 0 0.4 0.4 {}
T {DC ANALYSIS SINGLE TO DIFF} -530 50 0 0 0.4 0.4 {}
N 210 -210 210 -170 {lab=VDD}
N 230 -190 230 -160 {lab=EN}
N 230 -60 230 0 {lab=Ibias}
N 210 -50 210 -20 {lab=VSS}
N 310 -120 370 -120 {lab=#net1}
N 310 -100 370 -100 {lab=#net2}
N 100 -110 140 -110 {lab=Vcm_reg}
N 90 -80 130 -80 {lab=Vinn}
N 90 -140 130 -140 {lab=Vinp}
N -310 -90 -260 -90 {lab=#net3}
N -310 -70 -260 -70 {lab=#net4}
N -450 -90 -430 -90 {lab=Vinp}
N -450 -70 -430 -70 {lab=Vinn}
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
N 420 -560 420 -520 {lab=VDD}
N 440 -540 440 -510 {lab=EN}
N 440 -410 440 -350 {lab=Ibias}
N 420 -400 420 -370 {lab=VSS}
N 520 -460 530 -460 {lab=Vcm_reg}
N -200 -90 -130 -90 {lab=Voutn}
N -200 -70 -130 -70 {lab=Voutp}
N 430 -120 470 -120 {lab=Voutn}
N 430 -100 470 -100 {lab=Voutp}
N 340 -510 340 -490 {lab=Vcm}
N 330 -510 340 -510 {lab=Vcm}
N 270 -480 270 -430 {lab=Vcm_calc}
N -90 110 -50 110 {lab=Voutp}
N -210 110 -150 110 {lab=#net7}
N -340 110 -270 110 {lab=Vinn}
N -450 110 -400 110 {lab=Vt_n}
N -90 160 -50 160 {lab=Voutn}
N -210 160 -150 160 {lab=#net8}
N -340 160 -270 160 {lab=Vinp}
N -450 160 -400 160 {lab=Vt_p}
C {/foss/designs/Chipalooza2/schema/ota_cmfb_core/ota_cmfb_core.sym} 210 -110 0 0 {name=xopamp1}
C {lab_pin.sym} 210 -210 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 100 -110 0 0 {name=p2 lab=Vcm_reg}
C {lab_pin.sym} 90 -80 0 0 {name=p3 lab=Vinn}
C {lab_pin.sym} 90 -140 0 0 {name=p4 lab=Vinp}
C {lab_pin.sym} 230 0 0 0 {name=p5 lab=Ibias}
C {lab_pin.sym} 470 -120 0 1 {name=p6 lab=Voutn}
C {lab_pin.sym} 470 -100 0 1 {name=p7 lab=Voutp}
C {lab_pin.sym} 210 -20 0 0 {name=p8 lab=VSS}
C {lab_pin.sym} 230 -190 0 1 {name=p9 lab=EN}
C {lab_pin.sym} 330 -510 0 0 {name=p13 lab=Vcm}
C {code_shown.sym} -1330 -330 0 0 {name=NETLIST only_toplevel=false value="
VSS VSS 0 0
VDD VDD VSS 1.5
VEN EN VSS 0
Vcm Vcm VSS \{vcm\}
Ibias VDD Ibias 2.5u
"}
C {code_shown.sym} -890 390 0 0 {name=OP_SIM only_toplevel=false
format="tcleval( @value )" value="
.control
op
let ro_n = voutn/i(vmeas2)
let ro_p = voutp/i(vmeas3)
print ro_n ro_p
write @schname\\\\.raw
.endc
"
spice_ignore=true}
C {simulator_commands_shown.sym} -1330 -500 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_ff
.lib cornerMOShv.lib mos_tt
.lib cornerMOSCAP.lib moscap_tt
.lib cornerCAP.lib cap_typ
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"
      }
C {lab_pin.sym} 220 -480 1 0 {name=p17 lab=Vcm_calc}
C {devices/launcher.sym} -1700 380 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {code_shown.sym} -1070 -350 0 0 {name=AC_SIM only_toplevel=false value="
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
C {code_shown.sym} -970 -610 0 0 {name=PARAMS only_toplevel=false value="
.option rshunt=1e9
.param vcm=0.75 vcm_in=0.75 cl=0.1p
.save all
"}
C {lab_pin.sym} -130 -90 2 0 {name=p21 lab=Voutn}
C {lab_pin.sym} -450 -90 2 1 {name=p22 lab=Vinp}
C {lab_pin.sym} -130 -70 0 1 {name=p23 lab=Voutp}
C {lab_pin.sym} -450 -70 0 0 {name=p24 lab=Vinn}
C {code_shown.sym} -940 -470 0 0 {name=LOAD only_toplevel=false value="
CL1 Voutp 0 \{cl\}
CL2 Voutn 0 \{cl\}
"
}
C {/foss/designs/Chipalooza2/schema/ac_diff_probe/ac_diff_probe.sym} -370 -80 0 0 {name=xprobe1 vcm=\{vcm_in\} vac=1
}
C {/foss/designs/Chipalooza2/schema/ota_cmfb_cm_sense/ota_cmfb_cm_sense.sym} 150 -480 3 1 {name=xvcm1}
C {devices/code_shown.sym} -1320 -600 0 0 {name=SAVE only_toplevel=true
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
C {ammeter.sym} 400 -120 3 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 400 -100 3 1 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {ammeter.sym} -230 -70 1 0 {name=Vmeas4 savecurrent=true spice_ignore=0}
C {ammeter.sym} -230 -90 1 1 {name=Vmeas5 savecurrent=true spice_ignore=0}
C {code_shown.sym} -910 130 0 0 {name=TRAN_SIM only_toplevel=false value="
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
C {launcher.sym} -1700 300 0 0 {name=h4
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
C {code_shown.sym} -1580 50 0 0 {name=AC_LOOP only_toplevel=false value="
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
C {code_shown.sym} -520 320 0 0 {name=MC_SETTINGS
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
C {launcher.sym} -450 595 0 0 {name=h1
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
C {simulator_commands_shown.sym} -245 275 0 0 {name=MC_SIM
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
C {simulator_commands_shown.sym} 80 280 0 0 {
name=Libs_Ngspice1
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
C {ammeter.sym} -120 110 1 1 {name=Vmeas6 savecurrent=true spice_ignore=true}
C {lab_pin.sym} -50 110 0 1 {name=p18 lab=Voutp}
C {lab_pin.sym} -310 110 1 0 {name=p19 lab=Vinn}
C {code_shown.sym} -1750 -360 0 0 {name=DC_LOOP_SIM only_toplevel=false value="
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
C {code_shown.sym} -1750 -650 0 0 {name=DC_SIM only_toplevel=false value="
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
C {res.sym} -240 110 1 1 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {res.sym} -370 110 1 0 {name=R2
value=500k
footprint=1206
device=resistor
m=1}
C {ammeter.sym} -120 160 1 0 {name=Vmeas7 savecurrent=true spice_ignore=true}
C {lab_pin.sym} -50 160 2 0 {name=p26 lab=Voutn}
C {lab_pin.sym} -310 160 1 1 {name=p27 lab=Vinp}
C {res.sym} -240 160 1 0 {name=R3
value=500k
footprint=1206
device=resistor
m=1}
C {res.sym} -370 160 1 0 {name=R4
value=500k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} -450 110 1 1 {name=p33 lab=Vt_n}
C {lab_pin.sym} -450 160 3 0 {name=p34 lab=Vt_p}
