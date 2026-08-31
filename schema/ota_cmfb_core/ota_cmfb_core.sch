v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -130 -140 -130 -110 {lab=#net1}
N -40 -140 50 -140 {lab=#net1}
N 50 -140 50 -110 {lab=#net1}
N 50 -10 50 10 {lab=Voutp_st1}
N -130 -10 -130 10 {lab=Voutn_st1}
N -130 100 50 100 {lab=VSS}
N -130 40 -130 100 {lab=VSS}
N 50 40 50 100 {lab=VSS}
N -280 -80 -170 -80 {lab=Vinp}
N 90 -80 130 -80 {lab=Vinn}
N -280 -10 -130 -10 {lab=Voutn_st1}
N -130 -50 -130 -10 {lab=Voutn_st1}
N 50 -10 130 -10 {lab=Voutp_st1}
N 50 -50 50 -10 {lab=Voutp_st1}
N -40 -160 -40 -140 {lab=#net1}
N -130 -140 -40 -140 {lab=#net1}
N -40 -260 -40 -190 {lab=VDD}
N -280 -260 -40 -260 {lab=VDD}
N -280 100 -130 100 {lab=VSS}
N -40 40 10 40 {lab=Ibias}
N -280 -190 -80 -190 {lab=Vcm_reg}
N 230 -20 230 10 {lab=Ibias}
N 270 40 290 40 {lab=Ibias}
N 290 -20 290 40 {lab=Ibias}
N 230 -20 290 -20 {lab=Ibias}
N 230 -50 230 -20 {lab=Ibias}
N 230 40 230 100 {lab=VSS}
N 50 100 230 100 {lab=VSS}
N -40 0 -40 40 {lab=Ibias}
N -90 40 -40 40 {lab=Ibias}
N -130 -80 -110 -80 {lab=VDD}
N 30 -80 50 -80 {lab=VDD}
N -460 -10 -460 30 {lab=Ibias}
N -460 60 -460 110 {lab=VSS}
N -540 60 -500 60 {lab=EN}
N 530 -190 530 -170 {lab=VDD}
N 530 -50 530 -20 {lab=VSS}
N 550 -60 550 -30 {lab=Ibias}
N 630 -110 690 -110 {lab=Voutp}
N 420 -110 450 -110 {lab=#net2}
N -730 -180 -730 -160 {lab=VDD}
N -730 -40 -730 -10 {lab=VSS}
N -750 -50 -750 -20 {lab=Ibias}
N -890 -100 -830 -100 {lab=Voutn}
N -650 -100 -620 -100 {lab=#net3}
N 420 -150 420 -110 {lab=#net2}
N 420 -240 420 -210 {lab=Voutn_st1}
N -620 -210 -620 -180 {lab=Voutp_st1}
N -620 -120 -620 -100 {lab=#net3}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 30 40 0 0 {name=M1
l=10u
w=0.5u
ng=1
m=4
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
annot_side=2}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 70 -80 2 0 {name=M2
l=2u
w=2.5u
ng=1
m=8
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=1}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -110 40 0 1 {name=M3
l=10u
w=0.5u
ng=1
m=4
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
annot_side=2}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -150 -80 2 1 {name=M4
l=2u
w=2.5u
ng=1
m=8
mm_ok=1
model=sg13_lv_pmos
annot_side=1
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -60 -190 2 1 {name=M5
l=10u
w=5u
ng=1
m=4
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=2}
C {opin.sym} -890 -100 0 1 {name=p1 sig_type=std_logic lab=Voutn}
C {opin.sym} 690 -110 0 0 {name=p2 sig_type=std_logic lab=Voutp}
C {iopin.sym} -280 -260 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {iopin.sym} -280 100 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {ipin.sym} -280 -80 0 0 {name=p5 sig_type=std_logic lab=Vinp}
C {ipin.sym} 230 -50 1 0 {name=p6 sig_type=std_logic lab=Ibias}
C {ipin.sym} 130 -80 0 1 {name=p7 sig_type=std_logic lab=Vinn}
C {ipin.sym} -280 -190 2 1 {name=p8 sig_type=std_logic lab=Vcm_reg}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 250 40 0 1 {name=M6
l=10u
w=0.5u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
annot_side=1
spiceprefix=X
}
C {lab_pin.sym} -40 0 2 0 {name=p10 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} -110 -80 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 30 -80 2 1 {name=p12 sig_type=std_logic lab=VDD}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -480 60 0 0 {name=M7
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
annot_side=1}
C {lab_pin.sym} -460 -10 2 0 {name=p13 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} -460 110 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {ipin.sym} -540 60 0 0 {name=p15 sig_type=std_logic lab=EN}
C {lab_pin.sym} 530 -190 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 530 -20 2 1 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 550 -30 2 0 {name=p17 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 130 -10 2 0 {name=p18 sig_type=std_logic lab=Voutp_st1}
C {lab_pin.sym} -620 -210 2 0 {name=p19 sig_type=std_logic lab=Voutp_st1}
C {lab_pin.sym} -730 -180 2 1 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -730 -10 2 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -750 -20 2 1 {name=p23 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 420 -240 2 1 {name=p24 sig_type=std_logic lab=Voutn_st1}
C {lab_pin.sym} -280 -10 2 1 {name=p20 sig_type=std_logic lab=Voutn_st1}
C {/foss/designs/Chipalooza2/schema/ota_cmfb_core/ota_cmfb_core_push_pull_output_stage.sym} 530 -110 0 0 {name=xsf1}
C {/foss/designs/Chipalooza2/schema/ota_cmfb_core/ota_cmfb_core_push_pull_output_stage.sym} -730 -100 0 1 {name=xsf2}
C {ammeter.sym} 420 -180 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} -620 -150 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
