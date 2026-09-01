v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -100 -90 -100 -50 {lab=IN}
N -100 30 -100 60 {lab=0}
N -100 -90 50 -90 {lab=IN}
N -200 -90 -100 -90 {lab=IN}
N 110 -90 180 -90 {lab=OUT}
N -200 -90 -200 -60 {lab=IN}
N -330 -90 -200 -90 {lab=IN}
N -200 0 -200 30 {lab=0}
N -200 30 -100 30 {lab=0}
N -100 10 -100 30 {lab=0}
C {capa.sym} -100 -20 2 1 {name=C1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} -330 -90 3 0 {name=p1 lab=IN}
C {iopin.sym} 180 -90 2 1 {name=p3 lab=OUT}
C {vsource.sym} -200 -30 0 0 {name=V1 value="\{vcm\} ac \{vac\}" savecurrent=false}
C {lab_pin.sym} -100 60 3 0 {name=p2 lab=0}
C {ind.sym} 20 -240 1 0 {name=L1
m=1
value=1G
footprint=1206
device=inductor
spice_ignore=true}
C {res.sym} 80 -90 1 0 {name=R1
value=1G
footprint=1206
device=resistor
m=1}
