v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -80 -120 -80 -90 {lab=#net1}
N 10 -120 100 -120 {lab=#net1}
N 100 -120 100 -90 {lab=#net1}
N 100 10 100 30 {lab=Vout}
N -80 120 100 120 {lab=VSS}
N -80 60 -80 120 {lab=VSS}
N 100 60 100 120 {lab=VSS}
N -230 -60 -120 -60 {lab=Vinp}
N 140 -60 180 -60 {lab=Vinn}
N -80 20 -80 30 {lab=mirror}
N 100 10 180 10 {lab=Vout}
N 100 -30 100 10 {lab=Vout}
N 10 -140 10 -120 {lab=#net1}
N -80 -120 10 -120 {lab=#net1}
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
N 280 -320 320 -320 {lab=EN}
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
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 80 60 0 0 {name=M1
l=10u
w=0.5u
ng=1
m=2
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
annot_side=2}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 120 -60 2 0 {name=M2
l=1u
w=2.5u
ng=1
m=2
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=1}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -60 60 0 1 {name=M3
l=10u
w=0.5u
ng=1
m=2
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
annot_side=2}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -100 -60 2 1 {name=M4
l=1u
w=2.5u
ng=1
m=2
mm_ok=1
model=sg13_lv_pmos
annot_side=1
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -10 -170 2 1 {name=M5
l=5u
w=2.5u
ng=1
m=4
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
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 340 -320 0 0 {name=M7
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
annot_side=1}
C {lab_pin.sym} 360 -390 2 0 {name=p13 sig_type=std_logic lab=mirror}
C {lab_pin.sym} 360 -270 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {ipin.sym} 280 -320 0 0 {name=p15 sig_type=std_logic lab=EN}
C {lab_pin.sym} 10 20 2 0 {name=p1 sig_type=std_logic lab=mirror}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -400 -170 2 0 {name=M8
l=5u
w=2.5u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=2}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -440 10 0 0 {name=M9
l=10u
w=0.5u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
annot_side=2
spiceprefix=X
}
C {lab_pin.sym} -420 -230 2 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -350 -170 3 1 {name=p10 sig_type=std_logic lab=tail_bias}
C {lab_pin.sym} -420 120 2 0 {name=p9 sig_type=std_logic lab=VSS}
