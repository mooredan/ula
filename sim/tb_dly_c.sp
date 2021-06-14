* non-overlapping

.include "../mag/dly_c.cir"
.lib "../device_models/AMI_C5N_rmodels.lib" min
.lib "../device_models/AMI_C5N_cmodels.lib" nom
.lib "../device_models/AMI_C5N.lib" tt 

.temp 27
.param cload = 5p

.param freq = 4meg;
.param ptperiod = '1.0 / freq'    $ 100 ns
.param ptrf = 'ptperiod * 0.10'   $ rise/fall time of clock is 10% of period
.param ptphase = 'ptperiod * 0.50'
.param pthi = 'ptphase - ptrf'


.param pvdd = 5.0  
.param pvss = 0.0

.param pvdd_80pct = 'pvdd * 0.80'
.param pvdd_20pct = 'pvdd * 0.20'
.param pvdd_50pct = 'pvdd * 0.50'

vvdd vdd 0 dc 'pvdd'
vvss vss 0 dc 'pvss'


* vck ck vss pulse(0 {pvdd} {ptphase} {ptrf} {ptrf} {pthi} {ptperiod})
va a vss pulse(0 {pvdd} {ptphase} {ptrf} {ptrf} {pthi} {ptperiod})

* xckbuf z ck vdd vss buf_c
* xckgen ck nck ckin vdd vss ckgen_b

xdut z a vdd vss dly_c

* load
cz z vss c={cload}

* cz z vss c=3.92p

.measure tran a_rise TRIG v(a)  VAL=pvdd_20pct RISE=3 TARG v(a) VAL=pvdd_80pct RISE=3
.measure tran a_fall TRIG v(a)  VAL=pvdd_80pct FALL=3 TARG v(a) VAL=pvdd_20pct FALL=3
.measure tran z_fall TRIG v(z)  VAL=pvdd_80pct FALL=3 TARG v(z) VAL=pvdd_20pct FALL=3
.measure tran z_rise TRIG v(z)  VAL=pvdd_20pct RISE=3 TARG v(z) VAL=pvdd_80pct RISE=3

* .measure tran ck_rise_z_rise TRIG v(ck) VAL=pvdd_50pct RISE=3 TARG v(z) VAL=pvdd_50pct RISE=3
* .measure tran ck_fall_z_fall TRIG v(ck) VAL=pvdd_50pct FALL=3 TARG v(z) VAL=pvdd_50pct FALL=3


.tran 10ps 'ptperiod * 4'

.control
run
.endc

.end

