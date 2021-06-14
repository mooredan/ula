*SPICE circuit <ckgen_b> from XCircuit v3.10 rev 11

.subckt dlyinv_b z a vdd vss
R1 z n1 phrResistor L=30.9u W=1.5u
C1 z vss 200.35f
C2 vdd z 145.86f
M1000 n1 a vdd vdd pfet W=5.7u L=0.6u M=1
M1001 n1 a vss vss nfet w=3.0u l=0.6u m=1
.ends

.subckt dlybuf_b z a vdd vss
X1 z n1 vdd vss dlyinv_b
X0 n1 a vdd vss dlyinv_b
.ends

.subckt and2_b z a b vdd vss
M1 z x2 vss vss nfet w=3u l=0.6u m=1
M2 z x2 vdd vdd pfet W=5.7u L=0.6u M=1
M3 x1 a vss vss nfet w=6u l=0.6u m=1
M4 x2 b x1 vss nfet w=6u l=0.6u m=1
M5 x2 a vdd vdd pfet W=5.7u L=0.6u M=1
M6 x2 b vdd vdd pfet W=5.7u L=0.6u M=1
.ends

.subckt inv_b z a vdd vss
M1000 z a vdd vdd pfet W=5.7u L=0.6u M=1
M1001 z a vss vss nfet w=3.0u l=0.6u m=1
.ends

.subckt nor2_b z a b vdd vss
M1 x1 a vdd vdd pfet W=11.4u L=0.6u M=1
M2 z b vss vss nfet w=3u l=0.6u m=1
M3 z b x1 vdd pfet W=11.4u L=0.6u M=1
M4 z a vss vss nfet w=3u l=0.6u m=1
.ends

.subckt ckgen_b ck nck ckin vdd vss
X1 n3 n2 vdd vss dlybuf_b
X3 n2 n1 vdd vss dlybuf_b
X0 ck n4 ckin vdd vss and2_b
X2 n4 n3 vdd vss inv_b
X4 n1 ckin vdd vss inv_b
X5 nck n4 ckin vdd vss nor2_b
.ends

