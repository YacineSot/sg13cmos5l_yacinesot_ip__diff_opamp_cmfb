v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 4 -360 -370 330 70 {fill=0}
B 4 -310 80 210 350 {fill=0}
B 4 340 -370 910 260 {fill=0 lock=1}
T {FEEDBACK LOOP} -60 -340 0 0 0.4 0.4 {}
T {CORE OPAMP} -20 90 0 0 0.4 0.4 {}
T {Dummies} 380 -360 0 0 0.3 0.3 {}
N -110 110 -110 150 {lab=VDD}
N -90 130 -90 160 {lab=EN}
N -90 260 -90 320 {lab=Ibias}
N -110 270 -110 300 {lab=VSS}
N -220 210 -180 210 {lab=Vcm_reg}
N -230 240 -190 240 {lab=Vinn}
N -230 180 -190 180 {lab=Vinp}
N -170 -300 -170 -220 {lab=Voutn}
N -310 -290 -310 -220 {lab=Voutp}
N -50 -110 20 -110 {lab=Vcm_calc}
N 100 -240 100 -200 {lab=VDD}
N 120 -220 120 -190 {lab=EN}
N 120 -90 120 -30 {lab=Vbias}
N 100 -80 100 -50 {lab=VSS}
N 200 -140 210 -140 {lab=Vcm_reg}
N 20 -190 20 -170 {lab=Vcm}
N 10 -190 20 -190 {lab=Vcm}
N -50 -160 -50 -110 {lab=Vcm_calc}
N -10 200 80 200 {lab=Voutn}
N -10 220 80 220 {lab=Voutp}
N 820 -290 820 -260 {lab=VSS}
N 820 -290 860 -260 {lab=VSS}
N 790 -260 820 -260 {lab=VSS}
N -310 -160 -50 -160 {lab=Vcm_calc}
N 820 -180 820 -150 {lab=VSS}
N 820 -180 860 -150 {lab=VSS}
N 790 -150 820 -150 {lab=VSS}
N 820 -120 860 -150 {lab=VSS}
N 440 -160 480 -130 {lab=VDD}
N 440 -160 480 -190 {lab=VDD}
N 480 -190 480 -160 {lab=VDD}
N 480 -160 510 -160 {lab=VDD}
N 430 90 430 100 {lab=EN}
N 430 90 450 90 {lab=EN}
N 430 80 430 90 {lab=EN}
N 430 -10 430 20 {lab=VDD}
N 430 160 430 190 {lab=VSS}
N -70 150 -70 170 {lab=Vbias}
C {ota_cmfb_core/ota_cmfb_core.sym} -110 210 0 0 {name=xopamp1}
C {iopin.sym} -110 110 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} -220 210 0 0 {name=p2 lab=Vcm_reg}
C {ipin.sym} -230 240 0 0 {name=p3 lab=Vinn}
C {ipin.sym} -230 180 0 0 {name=p4 lab=Vinp}
C {ipin.sym} -90 320 0 0 {name=p5 lab=Ibias}
C {opin.sym} 80 200 0 0 {name=p6 lab=Voutn}
C {opin.sym} 80 220 0 0 {name=p7 lab=Voutp}
C {iopin.sym} -110 300 0 1 {name=p8 lab=VSS}
C {ipin.sym} -90 130 0 1 {name=p9 lab=EN}
C {ipin.sym} 10 -190 0 0 {name=p13 lab=Vcm}
C {lab_pin.sym} -100 -160 1 0 {name=p17 lab=Vcm_calc}
C {ota_cmfb_fbota/ota_cmfb_fbota.sym} 100 -140 0 0 {name=xota1}
C {lab_pin.sym} 100 -240 0 1 {name=p12 lab=VDD}
C {lab_pin.sym} 120 -220 0 1 {name=p14 lab=EN}
C {lab_pin.sym} 120 -30 0 0 {name=p28 lab=Vbias}
C {lab_pin.sym} 100 -50 0 0 {name=p29 lab=VSS}
C {lab_pin.sym} 210 -140 0 1 {name=p30 lab=Vcm_reg}
C {lab_pin.sym} -310 -290 2 1 {name=p31 lab=Voutp
}
C {lab_pin.sym} -170 -300 0 0 {name=p32 lab=Voutn
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 840 -260 0 1 {name=M7
l=0.5u
w=0.25u
ng=1
m=2
mm_ok=1
model=sg13_lv_nmos
annot_side=2
spiceprefix=X
}
C {lab_pin.sym} 790 -260 0 0 {name=p49 lab=VSS}
C {sg13cmos5l_pr/rhigh.sym} -170 -190 0 0 {name=R1
w=0.5e-6
l="1e-6*10"
model=rhigh
body=VSS
spiceprefix=X
serial_res=10
b=0
m=1
mm_ok=1
value="expr_eng( ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13cmos5l_pr/rhigh.sym} -310 -190 0 0 {name=R2
w=0.5e-6
l="1e-6*10"
model=rhigh
body=VSS
spiceprefix=X
serial_res=10
b=0
m=1
mm_ok=1
value="expr_eng( ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 840 -150 0 1 {name=M1
l=0.5u
w=3.2u
ng=1
m=10
mm_ok=1
model=sg13_lv_nmos
annot_side=2
spiceprefix=X
}
C {lab_pin.sym} 790 -150 0 0 {name=p11 lab=VSS}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 460 -160 0 0 {name=M2
l=0.5u
w=1.985u
ng=1
m=100
mm_ok=1
model=sg13_lv_pmos
annot_side=2
spiceprefix=X
}
C {lab_pin.sym} 510 -160 0 1 {name=p15 lab=VDD}
C {sg13cmos5l_pr/dantenna.sym} 430 130 0 0 {name=D1
model=dantenna
l=0.78u
w=0.78u
spiceprefix=X
}
C {sg13cmos5l_pr/dpantenna.sym} 430 50 0 0 {name=D2
model=dpantenna
l=1.34u
w=1.05u
spiceprefix=X
}
C {lab_pin.sym} 430 -10 0 1 {name=p16 lab=VDD}
C {lab_pin.sym} 430 190 0 0 {name=p18 lab=VSS}
C {lab_pin.sym} 450 90 0 1 {name=p19 lab=EN}
C {lab_pin.sym} -70 150 0 1 {name=p20 lab=Vbias}
C {lab_pin.sym} 820 -230 0 0 {name=p10 lab=Vbias}
