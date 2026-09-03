v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -110 50 -110 90 {lab=Vout}
N -110 -30 -60 -30 {lab=VDD}
N -110 120 -60 120 {lab=VSS}
N -270 -330 -270 -270 {lab=VDD}
N -270 380 -270 430 {lab=VSS}
N -110 -190 -110 -60 {lab=VDD}
N -360 -270 -310 -270 {lab=Vbiasp}
N -360 380 -310 380 {lab=Vbiasn}
N -110 50 -90 50 {lab=Vout}
N -110 0 -110 50 {lab=Vout}
N 360 -270 360 -200 {lab=VDD}
N 400 -200 430 -200 {lab=Vbiasp}
N 430 -200 430 -140 {lab=Vbiasp}
N 360 -140 430 -140 {lab=Vbiasp}
N 360 -170 360 -140 {lab=Vbiasp}
N -440 -30 -440 -10 {lab=Vin}
N -320 160 -270 160 {lab=Vin_shifted}
N -320 120 -320 160 {lab=Vin_shifted}
N -440 50 -440 120 {lab=Vin_shifted}
N -210 -30 -150 -30 {lab=Vin}
N -460 -30 -440 -30 {lab=Vin}
N -440 20 -410 20 {lab=VDD}
N -500 20 -480 20 {lab=Vcasp2}
N 360 150 360 240 {lab=Vcasp2}
N 400 100 430 100 {lab=Vcasp2}
N 430 100 430 150 {lab=Vcasp2}
N 360 150 430 150 {lab=Vcasp2}
N -870 -240 -870 -170 {lab=VDD}
N -830 -170 -800 -170 {lab=Vbiasp}
N -870 -110 -870 -80 {lab=Vcasn2}
N -930 -50 -910 -50 {lab=Vcasn2}
N -930 -110 -930 -50 {lab=Vcasn2}
N -930 -110 -870 -110 {lab=Vcasn2}
N -870 -140 -870 -110 {lab=Vcasn2}
N -870 -50 -840 -50 {lab=VSS}
N 320 100 360 100 {lab=VDD}
N 360 130 360 150 {lab=Vcasp2}
N -870 280 -870 370 {lab=VSS}
N -920 280 -910 280 {lab=Vbiasn}
N 400 -70 430 -70 {lab=Vcasp}
N 430 -70 430 -20 {lab=Vcasp}
N 360 -20 430 -20 {lab=Vcasp}
N 320 -70 360 -70 {lab=VDD}
N 360 -40 360 -20 {lab=Vcasp}
N 360 -20 360 70 {lab=Vcasp}
N 360 -140 360 -100 {lab=Vbiasp}
N -870 60 -870 100 {lab=Vcasn}
N -930 130 -910 130 {lab=Vcasn}
N -930 60 -930 130 {lab=Vcasn}
N -930 60 -870 60 {lab=Vcasn}
N -870 130 -840 130 {lab=VSS}
N -870 220 -870 250 {lab=Vbiasn}
N -870 -20 -870 60 {lab=Vcasn}
N -270 300 -270 350 {lab=#net1}
N -270 270 -240 270 {lab=VSS}
N -360 270 -310 270 {lab=Vcasn}
N -270 -240 -270 -200 {lab=#net2}
N -270 -140 -270 -30 {lab=Vin}
N -270 -170 -220 -170 {lab=VDD}
N -350 -170 -310 -170 {lab=Vcasp}
N -920 220 -870 220 {lab=Vbiasn}
N -870 160 -870 220 {lab=Vbiasn}
N -920 220 -920 280 {lab=Vbiasn}
N -930 280 -920 280 {lab=Vbiasn}
N -170 20 -160 20 {lab=Vcasn2}
N -250 20 -210 20 {lab=VSS}
N -210 50 -210 120 {lab=Vin_shifted}
N -320 120 -210 120 {lab=Vin_shifted}
N -210 -30 -210 -10 {lab=Vin}
N -270 -30 -210 -30 {lab=Vin}
N 360 270 360 330 {lab=VSS}
N 400 270 440 270 {lab=Vbias}
N -110 150 -110 280 {lab=VSS}
N -270 160 -270 240 {lab=Vin_shifted}
N -210 120 -150 120 {lab=Vin_shifted}
N -600 -110 -600 -80 {lab=#net3}
N -540 -80 -440 -80 {lab=Vin}
N -440 -30 -270 -30 {lab=Vin}
N -440 120 -320 120 {lab=Vin_shifted}
N -440 -80 -440 -30 {lab=Vin}
N -690 -110 -660 -110 {lab=Vout}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -130 120 0 0 {name=M1
l=5u
w=0.5u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
annot_side=2
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -130 -30 2 1 {name=M2
l=0.5u
w=5u
ng=1
m=1
mm_ok=1
annot_side=2
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -110 -190 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} -60 -30 0 1 {name=p3 lab=VDD}
C {lab_pin.sym} -110 280 0 1 {name=p4 lab=VSS}
C {lab_pin.sym} -60 120 0 1 {name=p5 lab=VSS}
C {iopin.sym} -270 430 0 1 {name=p7 lab=VSS}
C {iopin.sym} -270 -330 0 1 {name=p8 lab=VDD}
C {ipin.sym} 440 270 0 1 {name=p9 lab=Vbias}
C {ipin.sym} -460 -30 0 0 {name=p10 lab=Vin}
C {opin.sym} -90 50 0 0 {name=p11 lab=Vout}
C {lab_pin.sym} -320 160 0 0 {name=p14 lab=Vin_shifted}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -290 -270 2 1 {name=M5
l=3u
w=10u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=1}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -290 380 0 0 {name=M6
l=0.5u
w=5u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
annot_side=1}
C {lab_pin.sym} 360 330 0 0 {name=p12 lab=VSS}
C {lab_pin.sym} -930 280 0 0 {name=p15 lab=Vbiasn}
C {lab_pin.sym} 360 -270 0 1 {name=p16 lab=VDD}
C {lab_pin.sym} 430 -200 0 1 {name=p17 lab=Vbiasp}
C {lab_pin.sym} -360 -270 0 0 {name=p18 lab=Vbiasp}
C {lab_pin.sym} -410 20 1 1 {name=p2 lab=VDD}
C {lab_pin.sym} -250 20 1 1 {name=p6 lab=VSS}
C {lab_pin.sym} -160 20 1 1 {name=p19 lab=Vcasn2}
C {lab_pin.sym} -500 20 1 1 {name=p20 lab=Vcasp2}
C {lab_pin.sym} 320 100 0 0 {name=p21 lab=VDD}
C {lab_pin.sym} 430 100 0 1 {name=p22 lab=Vcasp2}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -460 20 0 0 {name=M4
l=3u
w=5u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=1}
C {lab_pin.sym} -870 370 0 0 {name=p23 lab=VSS}
C {lab_pin.sym} -870 -240 0 1 {name=p25 lab=VDD}
C {lab_pin.sym} -800 -170 0 1 {name=p26 lab=Vbiasp}
C {lab_pin.sym} -840 -50 0 1 {name=p27 lab=VSS}
C {lab_pin.sym} -930 -50 1 1 {name=p28 lab=Vcasn2}
C {lab_pin.sym} 320 -70 0 0 {name=p13 lab=VDD}
C {lab_pin.sym} 430 -70 0 1 {name=p24 lab=Vcasp}
C {lab_pin.sym} -840 130 0 1 {name=p29 lab=VSS}
C {lab_pin.sym} -930 130 1 1 {name=p30 lab=Vcasn}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -290 270 0 0 {name=M15
l=0.5u
w=5u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
annot_side=2
spiceprefix=X
}
C {lab_pin.sym} -240 270 0 1 {name=p31 lab=VSS}
C {lab_pin.sym} -360 270 2 1 {name=p32 lab=Vcasn}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -290 -170 2 1 {name=M16
l=3u
w=10u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=2}
C {lab_pin.sym} -220 -170 0 1 {name=p33 lab=VDD}
C {lab_pin.sym} -350 -170 0 0 {name=p34 lab=Vcasp}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -190 20 0 1 {name=M3
l=3u
w=1.4u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
annot_side=2
spiceprefix=X
}
C {lab_pin.sym} -360 380 0 0 {name=p35 lab=Vbiasn}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 380 -200 2 0 {name=M8
l=3u
w=10u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=1}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 380 -70 2 0 {name=M9
l=3u
w=10u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=2}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 380 100 2 0 {name=M13
l=3u
w=5u
ng=1
m=2
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=1}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -850 -170 2 0 {name=M10
l=3u
w=10u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
annot_side=1}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -890 -50 0 0 {name=M11
l=3u
w=1.4u
ng=1
m=2
mm_ok=1
model=sg13_lv_nmos
annot_side=2
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -890 130 0 0 {name=M12
l=0.5u
w=5u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
annot_side=2
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -890 280 0 0 {name=M14
l=0.5u
w=5u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
annot_side=1}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 380 270 0 1 {name=M7
l=1u
w=2u
ng=1
m=2
mm_ok=1
model=sg13_lv_nmos
annot_side=2
spiceprefix=X
}
C {lab_pin.sym} -690 -110 2 1 {name=p36 lab=Vout}
C {sg13cmos5l_pr/rhigh.sym} -630 -110 1 0 {name=R1
w=0.5e-6
l=1e-6*8
model=rhigh
body=VSS
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13cmos5l_pr/moscap_p.sym} -540 -80 1 0 {name=C1
l=5.0u
w=5.0u
m=3
mm_ok=1
annot_side=2
model=sg13_moscap_p
spiceprefix=X
}
