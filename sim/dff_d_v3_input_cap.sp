* input impedance of dff_d_v3
*
* this can be used to determine the input capacitance

.include "../device_models/C5_models.txt"
.include "../ps/dff_d_v3.sp"

.param vdd_val = 5.0

xdut q d ck nck vdd vss dff_d_v3

vvdd vdd 0 dc {vdd_val}
vvss vss 0 dc 0.0

* vin_d   in_d   0 dc 2.5 ac 2.5
vin_d   in_d   0 dc 0

vin_ck  in_ck  0 dc 2.5 ac 2.5 
* vin_ck  in_ck  0 dc 2.5

* vin_nck in_nck 0 dc 2.5 ac 2.5
vin_nck in_nck 0 dc 5

rin_d   in_d   d   r=1
rin_ck  in_ck  ck  r=1
rin_nck in_nck nck r=1

cq q vss c=100f

.ac dec 10 1 1000MEG

.control
run
* print '1 / (imag(v(a)[70] / i(vin)[70]) * 2 * pi * frequency)'
* print '1 / (imag(v(ck)[70] / i(vin_ck)[70]) * 2 * pi * 1e7)'

* let d_cap   = '1 / (imag(v(d)[70] / i(vin_d)[70]) * 2 * pi * 1e7)'
let ck_cap  = '1 / (imag(v(ck)[70] / i(vin_ck)[70]) * 2 * pi * 1e7)'
* let nck_cap = '1 / (imag(v(nck)[70] / i(vin_nck)[70]) * 2 * pi * 1e7)'

* print d_cap
print ck_cap
* print nck_cap

.endc
* plot '1 / (imag(v(ck) / i(vin_ck)) * 2 * pi * frequency)'
* .print ac '1 / (imag(v(a) / i(vin)) * 2 * pi * frequency)'
* .measure ac va FIND v(a) AT=1MEG
* .measure ac ia FIND i(vin) AT=1MEG
* .measure ac zin FIND par('v(a) / i(vin)') AT=1MEG
* .measure ac jpart param='imag(zin)'


* .measure ac a_cap FIND par('1 / (imag(v(a) / i(vin)) * 2 * pi * 1e6)') AT=1MEG

.end
