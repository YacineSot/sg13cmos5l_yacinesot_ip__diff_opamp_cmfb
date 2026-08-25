v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -90 -50 -40 -50 {lab=INP}
N -90 -10 -40 -10 {lab=INN}
N 0 -50 50 -50 {lab=OUTN}
N 0 -10 50 -10 {lab=OUT}
C {/foss/designs/Chipalooza2/schema/ac_probe/ac_probe.sym} -20 -70 0 0 {name=xprobe1 vcm=\{vcm\} vac=\{vac\}
}
C {/foss/designs/Chipalooza2/schema/ac_probe/ac_probe.sym} -20 10 2 1 {name=xprobe2 vcm=\{vcm\} vac=-\{vac\}
}
C {iopin.sym} 50 -50 0 0 {name=p1 lab=OUTN}
C {iopin.sym} -90 -50 0 1 {name=p2 lab=INP}
C {iopin.sym} 50 -10 0 0 {name=p3 lab=OUTP}
C {iopin.sym} -90 -10 0 1 {name=p4 lab=INN}
