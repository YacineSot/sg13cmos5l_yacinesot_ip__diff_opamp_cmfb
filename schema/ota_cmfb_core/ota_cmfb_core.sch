v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 4 850 -280 1420 350 {fill=0 lock=1}
T {Dummies} 890 -270 0 0 0.3 0.3 {}
N -40 -140 50 -140 {lab=src_ab}
N 50 -140 50 -110 {lab=src_ab}
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
N -40 -160 -40 -140 {lab=src_ab}
N -130 -140 -40 -140 {lab=src_ab}
N -40 -260 -40 -190 {lab=VDD}
N -280 -260 -40 -260 {lab=VDD}
N -280 100 -130 100 {lab=VSS}
N -40 40 10 40 {lab=Vbias}
N -280 -190 -80 -190 {lab=Vcm_reg}
N 230 -20 230 10 {lab=Vbias}
N 270 40 290 40 {lab=Vbias}
N 290 -20 290 40 {lab=Vbias}
N 230 -20 290 -20 {lab=Vbias}
N 230 40 230 100 {lab=VSS}
N 50 100 230 100 {lab=VSS}
N -40 0 -40 40 {lab=Vbias}
N -90 40 -40 40 {lab=Vbias}
N -130 -80 -110 -80 {lab=VDD}
N 30 -80 50 -80 {lab=VDD}
N -420 160 -420 200 {lab=Vbias}
N -420 230 -420 280 {lab=VSS}
N -500 230 -460 230 {lab=EN_N}
N 530 -190 530 -170 {lab=VDD}
N 530 -50 530 -20 {lab=VSS}
N 550 -60 550 -30 {lab=Vbias}
N 420 -110 450 -110 {lab=Voutn_st1}
N -730 -180 -730 -160 {lab=VDD}
N -730 -40 -730 -10 {lab=VSS}
N -750 -50 -750 -20 {lab=Vbias}
N -650 -100 -620 -100 {lab=Voutp_st1}
N -620 -210 -620 -100 {lab=Voutp_st1}
N -890 -100 -830 -100 {lab=Voutn}
N 420 -220 420 -110 {lab=Voutn_st1}
N 630 -110 690 -110 {lab=Voutp}
N -130 -140 -130 -110 {lab=src_ab}
N -680 230 -680 250 {lab=EN_N}
N -680 230 -640 230 {lab=EN_N}
N -680 210 -680 230 {lab=EN_N}
N -760 230 -720 230 {lab=EN}
N -720 230 -720 280 {lab=EN}
N -680 130 -680 150 {lab=VDD}
N -670 130 -670 180 {lab=VDD}
N -670 280 -670 330 {lab=VSS}
N -680 310 -680 330 {lab=VSS}
N -680 130 -670 130 {lab=VDD}
N -680 180 -670 180 {lab=VDD}
N -720 180 -720 230 {lab=EN}
N -680 280 -670 280 {lab=VSS}
N -680 330 -670 330 {lab=VSS}
N -420 310 -420 370 {lab=VDD}
N -420 400 -420 430 {lab=Vcm_reg}
N -480 370 -460 370 {lab=EN}
N 930 -180 970 -210 {lab=VDD}
N 970 -210 970 -180 {lab=VDD}
N 970 -180 1000 -180 {lab=VDD}
N 230 -90 230 -20 {lab=Vbias}
N 210 -120 230 -120 {lab=VSS}
N 230 -180 230 -150 {lab=Ibias}
N 270 -120 310 -120 {lab=EN}
N 550 -180 550 -160 {lab=EN}
N -750 -170 -750 -150 {lab=EN}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 30 40 0 0 {name=MD
l=10u
w=0.25u
ng=1
m=8
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
annot_side=2}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 70 -80 2 0 {name=MB
l=2u
w=2.5u
ng=1
m=8
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=1}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -110 40 0 1 {name=MC
l=10u
w=0.25u
ng=1
m=8
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
annot_side=2}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -150 -80 2 1 {name=MA
l=2u
w=2.5u
ng=1
m=8
mm_ok=1
model=sg13_lv_pmos
annot_side=1
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -60 -190 2 1 {name=MM
l=10u
w=2.5u
ng=1
m=8
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=2}
C {opin.sym} -890 -100 0 1 {name=p1 sig_type=std_logic lab=Voutn}
C {opin.sym} 690 -110 0 0 {name=p2 sig_type=std_logic lab=Voutp}
C {iopin.sym} -280 -260 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {iopin.sym} -280 100 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {ipin.sym} -280 -80 0 0 {name=p5 sig_type=std_logic lab=Vinp}
C {ipin.sym} 230 -180 1 0 {name=p6 sig_type=std_logic lab=Ibias}
C {ipin.sym} 130 -80 0 1 {name=p7 sig_type=std_logic lab=Vinn}
C {ipin.sym} -280 -190 2 1 {name=p8 sig_type=std_logic lab=Vcm_reg}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 250 40 0 1 {name=ME
l=10u
w=0.25u
ng=1
m=2
mm_ok=1
model=sg13_lv_nmos
annot_side=1
spiceprefix=X
}
C {lab_pin.sym} -40 0 2 0 {name=p10 sig_type=std_logic lab=Vbias}
C {lab_pin.sym} -110 -80 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 30 -80 2 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -420 160 2 0 {name=p13 sig_type=std_logic lab=Vbias}
C {lab_pin.sym} -420 280 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {ipin.sym} -760 230 0 0 {name=p15 sig_type=std_logic lab=EN}
C {lab_pin.sym} 530 -190 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 530 -20 2 1 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 550 -30 2 0 {name=p17 sig_type=std_logic lab=Vbias}
C {lab_pin.sym} 130 -10 2 0 {name=p18 sig_type=std_logic lab=Voutp_st1}
C {lab_pin.sym} -620 -210 2 0 {name=p19 sig_type=std_logic lab=Voutp_st1}
C {lab_pin.sym} -730 -180 2 1 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -730 -10 2 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -750 -20 2 1 {name=p23 sig_type=std_logic lab=Vbias}
C {lab_pin.sym} 420 -220 2 1 {name=p24 sig_type=std_logic lab=Voutn_st1}
C {lab_pin.sym} -280 -10 2 1 {name=p20 sig_type=std_logic lab=Voutn_st1}
C {ota_cmfb_core/ota_cmfb_core_push_pull_output_stage.sym} 530 -110 0 0 {name=xsf1
lvs_ignore=0}
C {ota_cmfb_core/ota_cmfb_core_push_pull_output_stage.sym} -730 -100 0 1 {name=xsf2
lvs_ignore=0
}
C {res.sym} 0 -430 1 1 {name=R1
value=10k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} -190 -430 1 1 {name=R2
value=10k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -700 280 0 0 {name=MN0
l=130.00n
w=2.96u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
lvs_ignore=0}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -700 180 0 0 {name=MP0
l=130.00n
w=4.48u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
lvs_ignore=0}
C {lab_pin.sym} -670 330 2 0 {name=p25 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -680 130 2 1 {name=p26 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -500 230 2 1 {name=p27 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} -640 230 2 0 {name=p28 sig_type=std_logic lab=EN_N}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -440 230 0 0 {name=MN1
l=130.00n
w=740.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
lvs_ignore=0}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -440 370 0 0 {name=MP1
l=130.00n
w=150.00n
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
lvs_ignore=0
}
C {lab_pin.sym} -420 310 2 1 {name=p29 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -420 430 2 1 {name=p30 sig_type=std_logic lab=Vcm_reg}
C {lab_pin.sym} -480 370 2 1 {name=p31 sig_type=std_logic lab=EN}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 950 -180 2 1 {name=MB1
l=0.5u
w=2.5u
ng=1
m=4
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=1}
C {lab_pin.sym} 1000 -180 2 0 {name=p32 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 970 -150 2 0 {name=p33 sig_type=std_logic lab=src_ab}
C {lab_pin.sym} 50 -140 2 0 {name=p34 sig_type=std_logic lab=src_ab}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 250 -120 0 1 {name=MN2
l=130.00n
w=740.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
lvs_ignore=0}
C {lab_pin.sym} 210 -120 2 1 {name=p35 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 310 -120 2 0 {name=p36 sig_type=std_logic lab=EN}
C {opin.sym} 290 -20 2 1 {name=p37 sig_type=std_logic lab=Vbias}
C {lab_pin.sym} 550 -180 2 0 {name=p38 sig_type=std_logic lab=EN}
C {lab_pin.sym} -750 -170 2 1 {name=p39 sig_type=std_logic lab=EN}
