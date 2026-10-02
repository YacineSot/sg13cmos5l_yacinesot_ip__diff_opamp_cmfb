v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 4 610 -430 1180 200 {fill=0 lock=1}
T {Dummies} 650 -420 0 0 0.3 0.3 {}
N -80 -120 -80 -90 {lab=src_kl}
N 10 -120 100 -120 {lab=src_kl}
N 100 -120 100 -90 {lab=src_kl}
N 100 10 100 30 {lab=Vout}
N -80 120 100 120 {lab=VSS}
N -80 60 -80 120 {lab=VSS}
N 100 60 100 120 {lab=VSS}
N -230 -60 -120 -60 {lab=Vinp}
N 140 -60 180 -60 {lab=Vinn}
N -80 20 -80 30 {lab=mirror}
N 100 10 180 10 {lab=Vout}
N 100 -30 100 10 {lab=Vout}
N 10 -140 10 -120 {lab=src_kl}
N -80 -120 10 -120 {lab=src_kl}
N 10 -240 10 -170 {lab=VDD}
N -230 -240 10 -240 {lab=VDD}
N -230 120 -80 120 {lab=VSS}
N 10 60 60 60 {lab=mirror}
N -500 -50 -500 10 {lab=Ibias}
N 10 20 10 60 {lab=mirror}
N -40 60 10 60 {lab=mirror}
N -80 -60 -60 -60 {lab=VDD}
N 80 -60 100 -60 {lab=VDD}
N 360 -390 360 -350 {lab=mirror}
N 360 -320 360 -270 {lab=VSS}
N 280 -320 320 -320 {lab=EN_N}
N -80 20 10 20 {lab=mirror}
N -80 -30 -80 20 {lab=mirror}
N -420 10 -420 120 {lab=VSS}
N -420 -100 -420 -20 {lab=tail_bias}
N -420 -230 -420 -170 {lab=VDD}
N -380 -170 -350 -170 {lab=tail_bias}
N -350 -170 -350 -100 {lab=tail_bias}
N -420 -100 -350 -100 {lab=tail_bias}
N -420 -140 -420 -100 {lab=tail_bias}
N -350 -170 -30 -170 {lab=tail_bias}
N -500 10 -460 10 {lab=Ibias}
N 440 -120 440 -100 {lab=EN_N}
N 440 -120 480 -120 {lab=EN_N}
N 440 -140 440 -120 {lab=EN_N}
N 360 -120 400 -120 {lab=EN}
N 400 -120 400 -70 {lab=EN}
N 440 -220 440 -200 {lab=VDD}
N 450 -220 450 -170 {lab=VDD}
N 450 -70 450 -20 {lab=VSS}
N 440 -40 440 -20 {lab=VSS}
N 440 -220 450 -220 {lab=VDD}
N 440 -170 450 -170 {lab=VDD}
N 400 -170 400 -120 {lab=EN}
N 440 -70 450 -70 {lab=VSS}
N 440 -20 450 -20 {lab=VSS}
N 1060 -350 1060 -320 {lab=VSS}
N 1060 -350 1100 -320 {lab=VSS}
N 1030 -320 1060 -320 {lab=VSS}
N 710 -320 750 -350 {lab=VDD}
N 750 -350 750 -320 {lab=VDD}
N 750 -320 780 -320 {lab=VDD}
N 710 -220 750 -250 {lab=VDD}
N 750 -250 750 -220 {lab=VDD}
N 750 -220 780 -220 {lab=VDD}
N 710 -120 750 -150 {lab=VDD}
N 750 -150 750 -120 {lab=VDD}
N 750 -120 780 -120 {lab=VDD}
N 710 -20 750 -50 {lab=VDD}
N 750 -50 750 -20 {lab=VDD}
N 750 -20 780 -20 {lab=VDD}
N -30 -420 -30 -360 {lab=VDD}
N -30 -330 -30 -300 {lab=tail_bias}
N -90 -360 -70 -360 {lab=EN}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 80 60 0 0 {name=MJ
l=10u
w=0.25u
ng=1
m=4
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
annot_side=2}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 120 -60 0 1 {name=ML
l=2u
w=2.5u
ng=1
m=2
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=1}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -60 60 0 1 {name=MI
l=10u
w=0.25u
ng=1
m=4
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
annot_side=2}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -100 -60 0 0 {name=MK
l=2u
w=2.5u
ng=1
m=2
mm_ok=1
model=sg13_lv_pmos
annot_side=1
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -10 -170 0 0 {name=MO
l=5u
w=1.25u
ng=1
m=8
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=2}
C {opin.sym} 180 10 0 0 {name=p2 sig_type=std_logic lab=Vout}
C {iopin.sym} -230 -240 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {iopin.sym} -230 120 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {ipin.sym} -230 -60 0 0 {name=p5 sig_type=std_logic lab=Vinp}
C {ipin.sym} -500 -50 1 0 {name=p6 sig_type=std_logic lab=Ibias}
C {ipin.sym} 180 -60 0 1 {name=p7 sig_type=std_logic lab=Vinn}
C {lab_pin.sym} -60 -60 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 80 -60 2 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 360 -390 2 0 {name=p13 sig_type=std_logic lab=mirror}
C {lab_pin.sym} 360 -270 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 10 20 2 0 {name=p1 sig_type=std_logic lab=mirror}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -400 -170 2 0 {name=MN
l=5u
w=1.25u
ng=1
m=2
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=2}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -440 10 0 0 {name=MH
l=10u
w=0.25u
ng=1
m=2
mm_ok=1
model=sg13_lv_nmos
annot_side=2
spiceprefix=X
}
C {lab_pin.sym} -420 -230 2 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -350 -170 3 1 {name=p10 sig_type=std_logic lab=tail_bias}
C {lab_pin.sym} -420 120 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {ipin.sym} 360 -120 0 0 {name=p16 sig_type=std_logic lab=EN}
C {lab_pin.sym} 450 -20 2 0 {name=p25 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 440 -220 2 1 {name=p26 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 480 -120 2 0 {name=p28 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} 280 -320 2 1 {name=p15 sig_type=std_logic lab=EN_N}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 340 -320 0 0 {name=MN1
l=130.00n
w=740.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
lvs_ignore=0}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 1080 -320 0 1 {name=M2
l=0.5u
w=0.25u
ng=1
m=2
mm_ok=1
model=sg13_lv_nmos
annot_side=2
spiceprefix=X
}
C {lab_pin.sym} 1030 -320 0 0 {name=p23 lab=VSS}
C {lab_pin.sym} 1060 -290 2 1 {name=p17 sig_type=std_logic lab=tail_bias}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 730 -320 0 0 {name=MK1
l=0.5u
w=2.5u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
annot_side=1
spiceprefix=X
}
C {lab_pin.sym} 780 -320 2 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 750 -290 2 0 {name=p19 sig_type=std_logic lab=mirror}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 730 -220 0 0 {name=MK2
l=0.5u
w=2.5u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
annot_side=1
spiceprefix=X
}
C {lab_pin.sym} 780 -220 2 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 750 -190 2 0 {name=p21 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 100 -120 2 0 {name=p22 sig_type=std_logic lab=src_kl}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 730 -120 0 0 {name=MK3
l=0.5u
w=2.5u
ng=1
m=2
mm_ok=1
model=sg13_lv_pmos
annot_side=1
spiceprefix=X
}
C {lab_pin.sym} 780 -120 2 0 {name=p24 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 750 -90 2 0 {name=p29 sig_type=std_logic lab=src_kl}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 730 -20 0 0 {name=MK4
l=0.5u
w=1.25u
ng=1
m=2
mm_ok=1
model=sg13_lv_pmos
annot_side=1
spiceprefix=X
}
C {lab_pin.sym} 780 -20 2 0 {name=p27 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 750 10 0 1 {name=p30 sig_type=std_logic lab=tail_bias}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 420 -70 0 0 {name=MN0
l=130.00n
w=2.96u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
lvs_ignore=0}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 420 -170 0 0 {name=MP0
l=130.00n
w=4.48u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
lvs_ignore=0}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -50 -360 0 0 {name=MP1
l=130.00n
w=150.00n
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
lvs_ignore=0
}
C {lab_pin.sym} -30 -420 2 1 {name=p31 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -90 -360 2 1 {name=p33 sig_type=std_logic lab=EN}
C {lab_pin.sym} -30 -300 0 1 {name=p32 sig_type=std_logic lab=tail_bias}
