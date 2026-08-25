v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {code_shown.sym} 40 -130 0 0 {name=s2 only_toplevel=false spice_ignore=True value="
Ii 0 x DC 0 AC 0
Vi x a DC 0 AC 1
Vnodebuffer b x 0
"}
C {iopin.sym} 200 -210 0 1 {name=p3 lab=a}
C {iopin.sym} 560 -210 0 0 {name=p4 lab=b}
C {vsource.sym} 360 -120 0 0 {name=Vi value="0 AC 1" savecurrent=false}
C {lab_pin.sym} 360 -150 0 1 {name=p5 lab=x}
C {lab_pin.sym} 360 -90 0 1 {name=p6 lab=a}
C {isource.sym} 270 -120 0 0 {name=Ii value="0 AC 0"}
C {lab_pin.sym} 270 -90 0 1 {name=p7 lab=x}
C {gnd.sym} 270 -150 2 0 {name=l1 lab=0}
C {vsource.sym} 460 -120 0 0 {name=Vnodebuffer value=0 savecurrent=false}
C {lab_pin.sym} 460 -150 0 1 {name=p8 lab=b}
C {lab_pin.sym} 460 -90 0 1 {name=p9 lab=x}
