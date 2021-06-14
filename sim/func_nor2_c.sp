* Functional sim of nor2_c
*
.include "../device_models/C5_models.txt"
.include "../mag/nor2_c.cir"

.param vdd_val = 5.0
.param vdd_20pct = 'vdd_val * 0.20'
.param vdd_80pct = 'vdd_val * 0.80'
.param vdd_50pct = 'vdd_val * 0.50'



xdut z a b vdd vss nor2_c

vvdd vdd 0 dc {vdd_val}
vvss vss 0 dc 0.0

va a 0 pulse(0 {vdd_val} 5n 1n 1n 9n 20n)
vb b 0 pulse(0 {vdd_val} 2.5n 1n 1n 9n 20n)
cz z vss c=100f

.tran 1p 50n

.measure tran a_rise TRIG v(a) VAL=vdd_20pct RISE=2 TARG v(a) VAL=vdd_80pct RISE=2 
.measure tran a_fall TRIG v(a) VAL=vdd_80pct FALL=2 TARG v(a) VAL=vdd_20pct FALL=2 

.measure tran b_rise TRIG v(b) VAL=vdd_20pct RISE=2 TARG v(b) VAL=vdd_80pct RISE=2 
.measure tran b_fall TRIG v(b) VAL=vdd_80pct FALL=2 TARG v(b) VAL=vdd_20pct FALL=2 

.measure tran z_fall TRIG v(z) VAL=vdd_80pct FALL=2 TARG v(z) VAL=vdd_20pct FALL=2 
.measure tran z_rise TRIG v(z) VAL=vdd_20pct RISE=2 TARG v(z) VAL=vdd_80pct RISE=2 

.measure tran a_rise_to_z_fall TRIG v(a) VAL=vdd_50pct RISE=2 TARG v(z) VAL=vdd_50pct FALL=2 
.measure tran a_fall_to_z_rise TRIG v(a) VAL=vdd_50pct FALL=2 TARG v(z) VAL=vdd_50pct RISE=2 

.end
