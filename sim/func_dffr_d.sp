* Functional sim of dffr_d
*
.include "../device_models/C5_models.txt"
* .include "../mag/dffr_d.cir"
.include "../ps/dffr_d.sp"

.param vdd_val = 5.0
.param vdd_20pct = 'vdd_val * 0.20'
.param vdd_80pct = 'vdd_val * 0.80'
.param vdd_50pct = 'vdd_val * 0.50'

.param ck_freq = 10e6
.param ck_tper = '1 / ck_freq'
.param ck_tph = 'ck_tper / 2'
.param ck_trf = '0.10 * ck_tper'
.param ck_thi = 'ck_tph - ck_trf'



xdut q d ck r vdd vss dffr_d

vvdd vdd 0 dc {vdd_val}
vvss vss 0 dc 0.0

vck ck 0 pulse(0 {vdd_val} {ck_tph} {ck_trf} {ck_trf} {ck_thi} {ck_tper})

vd d 0 dc 0.0
vr r 0 dc 0.0

cq q vss c=100f

.tran 10p '3.5 * ck_tper'

* .measure tran a_rise TRIG v(a) VAL=vdd_20pct RISE=2 TARG v(a) VAL=vdd_80pct RISE=2 
* .measure tran a_fall TRIG v(a) VAL=vdd_80pct FALL=2 TARG v(a) VAL=vdd_20pct FALL=2 
* 
* .measure tran b_rise TRIG v(b) VAL=vdd_20pct RISE=2 TARG v(b) VAL=vdd_80pct RISE=2 
* .measure tran b_fall TRIG v(b) VAL=vdd_80pct FALL=2 TARG v(b) VAL=vdd_20pct FALL=2 
* 
* .measure tran z_fall TRIG v(z) VAL=vdd_80pct FALL=2 TARG v(z) VAL=vdd_20pct FALL=2 
* .measure tran z_rise TRIG v(z) VAL=vdd_20pct RISE=2 TARG v(z) VAL=vdd_80pct RISE=2 
* 
* .measure tran a_rise_to_z_fall TRIG v(a) VAL=vdd_50pct RISE=2 TARG v(z) VAL=vdd_50pct FALL=2 
* .measure tran a_fall_to_z_rise TRIG v(a) VAL=vdd_50pct FALL=2 TARG v(z) VAL=vdd_50pct RISE=2 

.end
