* Dynamic input cap
.include "../device_models/C5_models.txt"
.include "../ps/dff_d_v3.sp"

.param ptr      = 1.0n            $ Input Pulse rise time = 1ns
+      ptf      = 1.0n            $ Input Pulse fall time = 1ns
+      ptd      = 1.0n            $ delay to start pulse
+      pstop    = 'ptd+ptr+ptf'   $ End of simulation


.param     pvss     = 0.00 
+          pvdd     = 5.00
+          pvdd2    = 'pvdd * 0.50' 
+          pvih     = 'pvdd2 + pvdd * 0.2'    
+          pvil     = 'pvdd2 - pvdd * 0.2' 
+          ptrp20m  = 'pvil + (pvih-pvil)*0.20'
+          ptrp80m  = 'pvil + (pvih-pvil)*0.80'
+          ptrp50m  = 'pvil + (pvih-pvil)*0.50'

vvdd vdd 0 dc {pvdd}
vvss vss 0 dc 0.0

xdut q d ck nck vdd vss dff_d_v3

vck  ck  vss dc 0.0
vnck nck vss dc {pvdd}

* vnck  nck  vss dc 0.0
* vck   ck   vss dc {pvdd}

vd  d vss   PWL (0.00n         'pvdd2'
+                'ptd/5'       'pvil'
+                'ptd'         'pvil'
+                'ptd+ptr'     'pvih'
+                'ptd+ptr+ptf' 'pvil')

cq q vss c=100f

.tran 10p 3.0n


*

*   Note:  Slew rate = (pvih - pvil) / (ptr) = 0.5V/1.0 nS
*

********===============================================================********
***************** Measure Statements                           ****************
********===============================================================********
* 
* This assumes node "d" is your net for cap measurement, and "vd"
* is the PWL source with slow (0.5V/nS) ramp.
* 
*  CALCULATE THE 20/80/50%  LEVELS:
* .measure tran ptrp20m param = 'pvil + (pvih-pvil)*0.20'
* .measure tran ptrp80m param = 'pvil + (pvih-pvil)*0.80'
* .measure tran ptrp50m param = 'pvil + (pvih-pvil)*0.50'
*
.measure tran DELTA_V  param = '(pvih-pvil)*0.60'    $ Using 20-80% of swing for DELTA_V, which is 60%
 
*  Here_are_IIH_and_IIL for Rising Waveform:
.measure tran IIHR  FIND I(vd) WHEN V(d) = ptrp80m   td='ptd/2'
.measure tran IILR  FIND I(vd) WHEN V(d) = ptrp20m   td='ptd/2'

*  Here_are_IIH_and_IIL for Falling Waveform:
.measure tran IIHF   FIND I(vd) WHEN V(d) = ptrp80m  td='ptd+ptr'
.measure tran IILF   FIND I(vd) WHEN V(d) = ptrp20m  td='ptd+ptr'

* Here is the 20-80% Rise Time:
.measure tran DT_R trig V(d) val='ptrp20m' td='ptd/2' rise=1
+                                 targ V(d) val='ptrp80m' td='ptd/2' rise=1

* Here is the 80-20% Fall Time:
.measure tran DT_F trig V(d) val='ptrp80m' td='ptd/2' fall=1
+                                 targ V(d) val='ptrp20m' td='ptd/2' fall=1


* Now use C = I x delta-T/delta-V:
.measure tran  C_compR       param = 'abs(IIHR-IILR) * DT_R / (DELTA_V)' $ Capacitance for Rising Pulse
.measure tran  C_compF       param = 'abs(IIHF-IILF) * DT_F / (DELTA_V)' $ Capacitance for Falling Pulse
.measure tran  C_comp_avg    param = '(C_compR+C_compF) / 2.0'           $ Average value*

*   Note:  Slew rate = (pvih - pvil) / (ptr) = 0.5V/1.0 nS
*

.control
run
.endc

.end
