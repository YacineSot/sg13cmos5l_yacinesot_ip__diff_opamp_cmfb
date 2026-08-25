v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 0 160 0 {lab=Vbias}
N -100 0 -80 0 {lab=VSS}
N 60 0 80 0 {lab=VSS}
N -190 -0 -140 -0 {lab=Vbias}
N 80 30 80 100 {lab=VCM}
N -100 30 -100 100 {lab=VCM}
N -100 -140 -100 -30 {lab=Voutp}
N 80 -140 80 -30 {lab=Voutn}
N -100 100 80 100 {lab=VCM}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 100 0 2 0 {name=M2
l=0.5u
w=0.25u
ng=1
m=4
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
annot_side=1}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -120 0 2 1 {name=M4
l=0.5u
w=0.25u
ng=1
m=4
mm_ok=1
model=sg13_lv_nmos
annot_side=1
spiceprefix=X
}
C {ipin.sym} -100 -140 0 0 {name=p5 sig_type=std_logic lab=Voutp}
C {ipin.sym} 80 -140 0 1 {name=p7 sig_type=std_logic lab=Voutn}
C {lab_pin.sym} -80 0 2 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 60 0 2 1 {name=p12 sig_type=std_logic lab=VSS}
C {iopin.sym} 360 -200 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {ipin.sym} 160 0 0 1 {name=p3 sig_type=std_logic lab=Vbias
spice_ignore=short}
C {opin.sym} 80 100 0 0 {name=p4 sig_type=std_logic lab=VCM}
C {ipin.sym} -190 0 0 0 {name=p2 sig_type=std_logic lab=Vbias
spice_ignore=short}
