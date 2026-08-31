v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 20 -0 60 {lab=Vout}
N -0 -60 50 -60 {lab=VSS}
N -0 90 50 90 {lab=VDD}
N 0 120 0 250 {lab=VSS}
N -160 20 -160 60 {lab=Vin}
N -80 -60 -40 -60 {lab=Vbp}
N -80 90 -40 90 {lab=Vbn}
N -210 90 -160 90 {lab=VDD}
N -210 -60 -160 -60 {lab=VSS}
N -160 -110 -160 -90 {lab=Vbp}
N -160 140 -160 170 {lab=Vbn}
N -160 -220 -160 -160 {lab=VDD}
N -160 200 -160 250 {lab=VSS}
N 0 -220 0 -90 {lab=VDD}
N -250 -160 -200 -160 {lab=Vbias2}
N -250 200 -200 200 {lab=Vbias}
N -80 -110 -80 -60 {lab=Vbp}
N -120 -60 -80 -60 {lab=Vbp}
N -160 -110 -80 -110 {lab=Vbp}
N -160 -130 -160 -110 {lab=Vbp}
N -80 90 -80 140 {lab=Vbn}
N -120 90 -80 90 {lab=Vbn}
N -160 140 -80 140 {lab=Vbn}
N -160 120 -160 140 {lab=Vbn}
N 0 20 20 20 {lab=Vout}
N -0 -30 0 20 {lab=Vout}
N -200 20 -160 20 {lab=Vin}
N -160 -30 -160 20 {lab=Vin}
N -650 100 -630 100 {lab=Vbias}
N -590 100 -590 160 {lab=VSS}
N -590 -60 -590 70 {lab=Vbias2}
N -590 -190 -590 -120 {lab=VDD}
N -550 -120 -520 -120 {lab=Vbias2}
N -520 -120 -520 -60 {lab=Vbias2}
N -590 -60 -520 -60 {lab=Vbias2}
N -590 -90 -590 -60 {lab=Vbias2}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -20 -60 0 0 {name=M1
l=1u
w=2.5u
ng=1
m=4
mm_ok=1
model=sg13_lv_nmos
annot_side=2
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -20 90 0 0 {name=M2
l=1u
w=2.5u
ng=1
m=4
mm_ok=1
annot_side=2
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 0 -220 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 50 90 0 1 {name=p3 lab=VDD}
C {lab_pin.sym} 0 250 0 1 {name=p4 lab=VSS}
C {lab_pin.sym} 50 -60 0 1 {name=p5 lab=VSS}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -140 -60 0 1 {name=M3
l=1u
w=2.5u
ng=1
m=4
mm_ok=1
model=sg13_lv_nmos
annot_side=2
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -140 90 0 1 {name=M4
l=1u
w=2.5u
ng=1
m=4
mm_ok=1
annot_side=2
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -210 90 0 0 {name=p2 lab=VDD}
C {lab_pin.sym} -210 -60 0 0 {name=p6 lab=VSS}
C {iopin.sym} -160 250 0 1 {name=p7 lab=VSS}
C {iopin.sym} -160 -220 0 1 {name=p8 lab=VDD}
C {ipin.sym} -250 200 0 0 {name=p9 lab=Vbias}
C {ipin.sym} -200 20 0 0 {name=p10 lab=Vin}
C {opin.sym} 20 20 0 0 {name=p11 lab=Vout}
C {lab_pin.sym} -160 -110 0 0 {name=p13 lab=Vbp}
C {lab_pin.sym} -160 140 0 0 {name=p14 lab=Vbn}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -180 -160 2 1 {name=M5
l=1u
w=10u
ng=1
m=4
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=2}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -180 200 0 0 {name=M6
l=10u
w=0.5u
ng=1
m=4
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
annot_side=2}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -610 100 0 0 {name=M7
l=10u
w=0.5u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
annot_side=1
spiceprefix=X
}
C {lab_pin.sym} -590 160 0 0 {name=p12 lab=VSS}
C {lab_pin.sym} -650 100 0 0 {name=p15 lab=Vbias}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -570 -120 2 0 {name=M8
l=5u
w=1u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=2
}
C {lab_pin.sym} -590 -190 0 1 {name=p16 lab=VDD}
C {lab_pin.sym} -520 -120 0 1 {name=p17 lab=Vbias2}
C {lab_pin.sym} -250 -160 0 0 {name=p18 lab=Vbias2}
