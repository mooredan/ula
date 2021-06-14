* tb_gray207

.include "../device_models/C5_models.txt"
.include "../device_models/C5_rmodels.sp"
* .include "../device_models/SCN3ME_SUBM.30.r"
.include "../ps/buf_c.sp"
.include "../ps/inv_b.sp"
.include "../ps/inv_c.sp"
.include "../ps/buf_b.sp"
.include "../ps/and2_b.sp"
.include "../ps/nand2_b.sp"
.include "../ps/xnor2_b.sp"
.include "../ps/nor2_b.sp"
.include "../ps/or2_b.sp"
.include "../ps/dff_d_v3.sp"
.include "../ps/ckgen_b.sp"
.include "../ps/gray207.spc"
.include "../ps/dlybuf_b.sp"
.include "../ps/dlyinv_b.sp"
* .include "../mag/ckgen_b.sp"
* .include "../ckgen_b.spc"
.temp 100
.param cload = 5p

.param freq = 4meg;
.param ptperiod = '1.0 / freq'    $ 100 ns
.param ptrf = 'ptperiod * 0.10'   $ rise/fall time of clock is 10% of period
.param ptphase = 'ptperiod * 0.50'
.param pthi = 'ptphase - ptrf'


.param pvdd = 4.5 
.param pvss = 0.0

.param pvdd_80pct = 'pvdd * 0.80'
.param pvdd_20pct = 'pvdd * 0.20'
.param pvdd_50pct = 'pvdd * 0.50'

vvdd vdd 0 dc 'pvdd' pwl(0 0 1e-9 0 2e-9 {pvdd})
vvss vss 0 dc 'pvss'


* vck ck vss pulse(0 {pvdd} {ptphase} {ptrf} {ptrf} {pthi} {ptperiod})
vck ck vss dc 0 pulse(0 {pvdd} {ptphase} {ptrf} {ptrf} {pthi} {ptperiod})

* xckbuf z ck vdd vss buf_c
* xckgen ck nck ckin vdd vss ckgen_b
xdut ck vdd vss gray207

* load
* cck ck vss c={cload}
* cnck nck vss c={cload}

* cz z vss c=3.92p

* .measure tran ck_rise TRIG v(ck) VAL=pvdd_20pct RISE=3 TARG v(ck) VAL=pvdd_80pct RISE=3
* .measure tran ck_fall TRIG v(ck) VAL=pvdd_80pct FALL=3 TARG v(ck) VAL=pvdd_20pct FALL=3
* .measure tran z_fall  TRIG v(z)  VAL=pvdd_80pct FALL=3 TARG v(z) VAL=pvdd_20pct FALL=3
* .measure tran z_rise  TRIG v(z)  VAL=pvdd_20pct RISE=3 TARG v(z) VAL=pvdd_80pct RISE=3

* .measure tran ck_rise_z_rise TRIG v(ck) VAL=pvdd_50pct RISE=3 TARG v(z) VAL=pvdd_50pct RISE=3
* .measure tran ck_fall_z_fall TRIG v(ck) VAL=pvdd_50pct FALL=3 TARG v(z) VAL=pvdd_50pct FALL=3

* .op

* .nodeset v(xdut.x41.nslv)=0.0
* .nodeset v(xdut.x47.nslv)=0.0
* .nodeset v(xdut.x54.nslv)=0.0

* .tran 5ns 'ptperiod * 2000'
.tran 100ps 128us 

.control
save xdut.t xdut.x[0] xdut.d[0] xdut.q[0] xdut.q[1] xdut.q[2] xdut.sck xdut.mck
save        xdut.d[1] xdut.x[1] xdut.nsel[1] 
save        xdut.q[3] xdut.q[4] xdut.q[5]
save        xdut.q[6] xdut.q[7]
save        xdut.nro
save        xdut.ro1
save        xdut.ro2
save        xdut.ro3
save        xdut.ro4
save        xdut.ro5
save        xdut.ro6
save        xdut.ro7
save        xdut.ro8
save        xdut.nt
save        xdut.nextt
save        xdut.x56.nmas
save        xdut.x56.mas
save        xdut.x56.nslv
save        xdut.x56.xq
save        vdd i(vdd)
run
.endc

.end

