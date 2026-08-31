v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -160 -0 -20 -0 {lab=VCM}
N -20 -50 -20 -0 {lab=VCM}
N -160 -50 -160 -0 {lab=VCM}
N -160 -200 -160 -110 {lab=Voutp}
N -20 -200 -20 -110 {lab=Voutn}
C {ipin.sym} -160 -200 0 0 {name=p5 sig_type=std_logic lab=Voutp}
C {ipin.sym} -20 -200 0 1 {name=p7 sig_type=std_logic lab=Voutn}
C {sg13cmos5l_pr/rhigh.sym} -20 -80 0 0 {name=R1
w=0.5e-6
l="1e-6*10"
model=rhigh
body=0
spiceprefix=X
serial_res=10
b=0
m=1
mm_ok=1
value="expr_eng( ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13cmos5l_pr/rhigh.sym} -160 -80 0 0 {name=R2
w=0.5e-6
l="1e-6*10"
model=rhigh
body=0
spiceprefix=X
serial_res=10
b=0
m=1
mm_ok=1
value="expr_eng( ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {opin.sym} -20 0 0 0 {name=p1 sig_type=std_logic lab=VCM}
