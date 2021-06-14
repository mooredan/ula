*SPICE circuit <./ps/gray207> from XCircuit v3.10 rev 11

.subckt gray207 ck vdd vss
X1 ro2 nq[1] nq[2] vdd vss and2_b
X2 ro3 q[3] ro2 vdd vss and2_b
X3 ro4 nq[4] q[5] vdd vss and2_b
X4 ro5 q[4] q[5] vdd vss and2_b
X5 ro1 nq[6] q[7] vdd vss and2_b
X6 ro7 ro5 ro6 vdd vss or2_b
X7 ro8 nq[5] ro7 vdd vss or2_b
X8 sck ck vdd vss buf_c
X9 mck ck vdd vss inv_c
X10 nro ro1 ro8 vdd vss nand2_b
X11 ro6 ro3 ro4 vdd vss and2_b
X12 term2 t nq[0] vdd vss and2_b
X13 term3 term2 nq[1] vdd vss and2_b
X14 term4 term3 nq[2] vdd vss and2_b
X15 term5 term4 nq[3] vdd vss and2_b
X16 term6 term5 nq[4] vdd vss and2_b
X17 term7 term6 nq[5] vdd vss and2_b
X18 nsel[7] q[6] term7 vdd vss nand2_b
X19 d[7] x[7] nro vdd vss and2_b
X20 nq[7] q[7] vdd vss inv_b
X21 x[7] q[7] nsel[7] vdd vss xnor2_b
X22 q[7] d[7] sck mck vdd vss dff_d_v3
X23 nsel[6] q[5] term6 vdd vss nand2_b
X24 d[6] x[6] nro vdd vss and2_b
X25 nq[6] q[6] vdd vss inv_b
X26 x[6] q[6] nsel[6] vdd vss xnor2_b
X27 q[6] d[6] sck mck vdd vss dff_d_v3
X28 nsel[5] q[4] term5 vdd vss nand2_b
X29 d[5] x[5] nro vdd vss and2_b
X30 nq[5] q[5] vdd vss inv_b
X31 x[5] q[5] nsel[5] vdd vss xnor2_b
X32 q[5] d[5] sck mck vdd vss dff_d_v3
X33 nsel[4] q[3] term4 vdd vss nand2_b
X34 d[4] x[4] nro vdd vss and2_b
X35 nq[4] q[4] vdd vss inv_b
X36 x[4] q[4] nsel[4] vdd vss xnor2_b
X37 q[4] d[4] sck mck vdd vss dff_d_v3
X38 nsel[3] q[2] term3 vdd vss nand2_b
X39 d[3] x[3] nro vdd vss and2_b
X40 nq[3] q[3] vdd vss inv_b
X41 x[3] q[3] nsel[3] vdd vss xnor2_b
X42 q[3] d[3] sck mck vdd vss dff_d_v3
X43 nsel[2] q[1] term2 vdd vss nand2_b
X44 d[2] x[2] nro vdd vss and2_b
X45 nq[2] q[2] vdd vss inv_b
X46 x[2] q[2] nsel[2] vdd vss xnor2_b
X47 q[2] d[2] sck mck vdd vss dff_d_v3
X48 nsel[0] t vdd vss buf_b
X49 nsel[1] q[0] t vdd vss nand2_b
X50 d[1] x[1] nro vdd vss and2_b
X51 nq[1] q[1] vdd vss inv_b
X52 x[1] q[1] nsel[1] vdd vss xnor2_b
X53 q[1] d[1] sck mck vdd vss dff_d_v3
X54 nt t vdd vss inv_b
X55 nextt nt nro vdd vss and2_b
X56 t nextt sck mck vdd vss dff_d_v3
X57 d[0] x[0] nro vdd vss and2_b
X58 nq[0] q[0] vdd vss inv_b
X59 x[0] q[0] nsel[0] vdd vss xnor2_b
X60 q[0] d[0] sck mck vdd vss dff_d_v3
.ends

