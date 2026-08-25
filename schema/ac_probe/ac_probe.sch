v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -100 -90 -100 -50 {lab=IN}
N -100 10 -100 40 {lab=#net1}
N -100 -90 -50 -90 {lab=IN}
N -100 100 -100 120 {lab=0}
N -330 -90 -100 -90 {lab=IN}
N 10 -90 50 -90 {lab=#net2}
N 110 -90 180 -90 {lab=OUT}
C {capa.sym} -100 -20 2 1 {name=C1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} -330 -90 3 0 {name=p1 lab=IN}
C {iopin.sym} 180 -90 2 1 {name=p3 lab=OUT}
C {vsource.sym} -100 70 0 0 {name=V1 value="\{vcm\} ac \{vac\}" savecurrent=false}
C {lab_pin.sym} -100 120 3 0 {name=p2 lab=0}
C {ind.sym} 80 -90 1 0 {name=L1
m=1
value=1G
footprint=1206
device=inductor}
C {res.sym} -20 -90 1 0 {name=R1
value=1m
footprint=1206
device=resistor
m=1}
