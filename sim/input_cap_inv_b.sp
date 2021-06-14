* input impedance of inv_b
*
* this can be used to determine the input capacitance

.include "../device_models/C5_models.txt"
.include "../mag/inv_b.cir"

.param vdd_val = 5.0

xdut z a vdd vss inv_b

vvdd vdd 0 dc {vdd_val}
vvss vss 0 dc 0.0

vin in 0 dc 2.5 ac 2.5 $

rin in a r=1
* ca a vss c=2p

cz z vss c=100f

.ac dec 10 1 1000MEG

.control
run
* print '1 / (imag(v(a)[70] / i(vin)[70]) * 2 * pi * frequency)'
print '1 / (imag(v(a)[70] / i(vin)[70]) * 2 * pi * 1e7)'
let a_cap = '1 / (imag(v(a)[70] / i(vin)[70]) * 2 * pi * 1e7)'
print a_cap
.endc
* plot '1 / (imag(v(a) / i(vin)) * 2 * pi * frequency)'
* .print ac '1 / (imag(v(a) / i(vin)) * 2 * pi * frequency)'
* .measure ac va FIND v(a) AT=1MEG
* .measure ac ia FIND i(vin) AT=1MEG
* .measure ac zin FIND par('v(a) / i(vin)') AT=1MEG
* .measure ac jpart param='imag(zin)'


* .measure ac a_cap FIND par('1 / (imag(v(a) / i(vin)) * 2 * pi * 1e6)') AT=1MEG

.end
