*SPICE circuit <dff_d_v3> from XCircuit v3.10 rev 11

.subckt dff_d_v3 q d ck nck vdd vss
M1 x8 q vss vss nfet w=3u l=0.6u m=1
M2 nslv nck x8 vss nfet w=3u l=0.6u m=1
M3 nslv ck x4 vdd pfet W=6u L=0.6u M=1
M4 x4 q vdd vdd pfet W=6u L=0.6u M=1
M5 q nslv vss vss nfet w=3u l=0.6u m=2
M6 q nslv vdd vdd pfet W=6u L=0.6u M=2
M7 x7 mas vss vss nfet w=3u l=0.6u m=1
M8 nslv ck x7 vss nfet w=3u l=0.6u m=1
M9 nslv nck x3 vdd pfet W=6u L=0.6u M=1
M10 x3 mas vdd vdd pfet W=6u L=0.6u M=1
M11 x6 mas vss vss nfet w=3u l=0.6u m=1
M12 nmas ck x6 vss nfet w=3u l=0.6u m=1
M13 nmas nck x2 vdd pfet W=6u L=0.6u M=1
M14 x2 mas vdd vdd pfet W=6u L=0.6u M=1
M15 mas nmas vss vss nfet w=3u l=0.6u m=1
M16 mas nmas vdd vdd pfet W=6u L=0.6u M=1
M17 x5 d vss vss nfet w=3u l=0.6u m=1
M18 nmas nck x5 vss nfet w=3u l=0.6u m=1
M19 nmas ck x1 vdd pfet W=6u L=0.6u M=1
M20 x1 d vdd vdd pfet W=6u L=0.6u M=1
.ends

