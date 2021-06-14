* ringosc_test

.include "../device_models/C5_models.txt"
* .include "../device_models/C5_rmodels.sp"
* .include "../device_models/SCN3ME_SUBM.30.r"
* .include "../ps/buf_c.sp"
* .include "../ps/inv_b.sp"
* .include "../ps/buf_b.sp"
* .include "../ps/and2_b.sp"
.include "../ps/nand2_b.sp"
* .include "../ps/ckgen_b.sp"
* .include "../mag/dlyinv_b.sp"
* .include "../mag/ckgen_b.sp"
* .include "../ckgen_b.spc"
.include "../ringosc1.spc"
.temp 100
.param cload = 5f

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

vvdd vdd 0 dc 'pvdd'
vvss vss 0 dc 'pvss'


* vck ck vss pulse(0 {pvdd} {ptphase} {ptrf} {ptrf} {pthi} {ptperiod})
* vckin ckin vss pulse(0 {pvdd} {ptphase} {ptrf} {ptrf} {pthi} {ptperiod})

ven en vss pwl(0 0 1n 0 2n {pvdd})

* xckbuf z ck vdd vss buf_c
* xckgen ck nck ckin vdd vss ckgen_b
xringosc1 out en vdd vss ringosc1

* load
cout out vss c={cload}
* cnck nck vss c={cload}

* cz z vss c=3.92p

* .measure tran ck_rise TRIG v(ck) VAL=pvdd_20pct RISE=3 TARG v(ck) VAL=pvdd_80pct RISE=3
* .measure tran ck_fall TRIG v(ck) VAL=pvdd_80pct FALL=3 TARG v(ck) VAL=pvdd_20pct FALL=3
* .measure tran z_fall  TRIG v(z)  VAL=pvdd_80pct FALL=3 TARG v(z) VAL=pvdd_20pct FALL=3
* .measure tran z_rise  TRIG v(z)  VAL=pvdd_20pct RISE=3 TARG v(z) VAL=pvdd_80pct RISE=3

* .measure tran ck_rise_z_rise TRIG v(ck) VAL=pvdd_50pct RISE=3 TARG v(z) VAL=pvdd_50pct RISE=3
* .measure tran ck_fall_z_fall TRIG v(ck) VAL=pvdd_50pct FALL=3 TARG v(z) VAL=pvdd_50pct FALL=3


.tran 10ps 'ptperiod * 4'

.control
run
.endc

.end

