** Typical Model for 74HCU04 Unbuffered Inverter
** Rescued from 1993 Archives ;-)

.SUBCKT MyHCU04 in out vdd vss
Cnetstray1 out vss 4p
Cnetstray2 in vss 4p
RPOLY in x1 450
MU out x1 vdd vdd P1 L=1.76u W=4U AD=59P AS=59P PD=25U PS=25U NRD=6.116m NRS=6.116m
ML out x1 vss vss N1 L=1.76u W=2U AD=47P AS=47P PD=1U  PS=1U  NRD=m    NRS22%m
**
*.LIB TYP
 .MODEL N1 NMOS  
 + LEVEL   = 3
 + NSS     = 0.00000E+00 VTO     = 8.00000E-01 TOX     = 2.30000E-08
 + XJ      = 7.47842E-08 LD      = 0.04500E-06 RSH     = 65
 + NSUB    = 2.77696E+16 NFS     = 1.26234E+11 UO      = 5.82719E+02
 + VMAX    = 2.65458E+05 DELTA   = 8.81407E-01 THETA   = 5.29522E-02
 + ETA     = 3.52580E-02 KAPPA   = 2.15314E-01
 + CGSO    = 6.75E-11    CGDO    = 6.75E-11    CGBO    = 0.00
 + CJ      = 3.82E-04    CJSW    = 1.25E-09    PB      = 1.231
 + MJ      = 0.396       MJSW    = 0.221       TPG     = 1
 + DW      =-0.46000E-06 DL      =-0.42000E-06
 + XQC     = 1
*
 .MODEL P1 PMOS  
 + LEVEL   = 3
 + NSS     = 0.00000E+00 VTO     =-9.00000E-01 TOX     = 2.30000E-08
 + XJ      = 8.32522E-08 LD      = 0.03500E-06 RSH     = 125
 + NSUB    = 1.33990E+16 NFS     = 7.19190E+11 UO      = 1.92014E+02
 + VMAX    = 4.16775E+07 DELTA   = 5.63546E-01 THETA   = 1.22160E-01
 + ETA     = 4.96427E-02 KAPPA   = 5.00000E-02
 + CGSO    = 5.25E-11    CGDO    = 5.25E-11    CGBO    = 0.00
 + CJ      = 4.01E-04    CJSW    = 1.237E-09   PB      = 0.723    
 + MJ      = 0.452       MJSW    = 0.186       TPG     = -1
 + DW      =-0.46000E-06 DL      =-0.44000E-06
 + XQC     = 1
