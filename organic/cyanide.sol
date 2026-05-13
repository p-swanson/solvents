# WRITTEN BY: pswanson AT: 2026-05-13 10:24:26.493931
[solvent]
ff	oplsaa
rvdw	1
rcoul	1
gvv	0.00025	cyanide.gvv
density	33.42288177 15.92587
bulk-density 33.42288177 15.92587
dipole	0.0488648
dielect	78.41 144.8 

[atom]
# name	mol  idx   grp	charge	     sigma	epsilon
N0	UNK	1   1	-0.3718	     0.320688    0.701621
C1	UNK	2   2	 0.1903	     0.339966	 0.87864	
H2	UNK	3   3	 0.1815	     0.259964	 0.06276	
OW      tip3p   4   4   -0.834000    0.315061    0.636386
HW      tip3p   5   5    0.417000    0.123635    0.063639
HW2     tip3p   6   5    0.417000    0.123635    0.063639

[bond]
# atom1	atom2	distance
UNK.N0	UNK.C1	0.11569083801235086
UNK.N0	UNK.H2	0.22153284180906452
UNK.C1	UNK.H2	0.10584200489408731
tip3p.OW    tip3p.HW    0.09572
tip3p.OW    tip3p.HW2   0.09572
tip3p.HW    tip3p.HW2   0.15139

[gvv_map]
# atom1	atom2	column
N0	N0	2
C1	N0	3
C1	C1	4
H2	N0	5
H2	C1	6
H2	H2	7
OW	N0	8
OW	C1	9
OW	H2	10
OW	OW	11
HW	N0	12
HW	C1	13
HW	H2	14
HW	OW	15
HW	HW	16

