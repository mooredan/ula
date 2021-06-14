.subckt nwellResistor d g s b W=1 L=1 Rsquare = 808
R       d s 'L*Rsquare/W'
Rg      d g 0
Rb      b 0 0
.ends

.subckt polyResistor d g s b W=1 L=1 Rsquare = 22
R       d s 'L*Rsquare/W'
Rg      d g 0
Rb      b 0 0
.ends

.subckt poly2Resistor d g s b W=1 L=1 Rsquare = 
R       d s 'L*Rsquare/W'
Rg      d g 0
Rb      b 0 0
.ends

.subckt ndiffResistor d g s b W=1 L=1 Rsquare = 82.2
R       d s 'L*Rsquare/W'
Rg      d g 0
Rb      b 0 0
.ends

.subckt pdiffResistor d g s b W=1 L=1 Rsquare = 105.2
R       d s 'L*Rsquare/W'
Rg      d g 0
Rb      b 0 0
.ends

.subckt metal1Resistor d g s b W=1 L=1 Rsquare = 0.09
R       d s 'L*Rsquare/W'
Rg      d g 0
Rb      b 0 0
.ends

.subckt metal2Resistor d g s b W=1 L=1 Rsquare = 0.09
R       d s 'L*Rsquare/W'
Rg      d g 0
Rb      b 0 0
.ends

.subckt metal3Resistor d g s b W=1 L=1 Rsquare = 0.05
R       d s 'L*Rsquare/W'
Rg      d g 0
Rb      b 0 0
.ends

*                                                 Min  Nom  Max
*                                                 =============
* Capacitor Poly Res 40x200 - Under HR Mask Res_2 800 1000 1200 ohms/sq
*
.subckt phrResistor d g s b w=1 l=1 ad=0 pd=0 as=0 ps=0 Rsquare=1000.0
R       d s 'l*Rsquare/w'
Rg      d g 0
Rb      b 0 0
.ends

