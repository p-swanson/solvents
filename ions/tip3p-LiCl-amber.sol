#
[solvent]
    ff           gaff
    rbohr        0.0001
    rvdw         2
    rcoul        2
    gvv          0.001 ./Li.gvv
    density      33.42288177  0.000033 0.000033     # input density for amber rism1d : 55 mol/L at 298K
    bulk-density 33.42288177  0.000033 0.000033    # input density for amber rism1d : 55 mol/L at 298K
    dipole       0.0488648 0 0 
    dielect      78.41 1 1
[atom]
# == Based on GROMACS TIP3P, modified according to AMBER 1D-RISM setups ===
#  name      mole idx grp      charge       sigma     epsilon
    O1      tip3p   1   1   -0.834000    0.315061    0.636386
    H2      tip3p   2   2    0.417000    0.123635    0.063639
    H3      tip3p   3   2    0.417000    0.123635    0.063639
    Li      Li      4   3           1    0.182634    0.117108
    Cl      Cl      5   4          -1    0.447766    0.148913
[bond]
#      atom1       atom2    bond(nm)
    tip3p.O1    tip3p.H2    0.09572
    tip3p.O1    tip3p.H3    0.09572
    tip3p.H2    tip3p.H3    0.15139
[gvv_map]
# 1/O:O 2/H1:O 3/H1:H1 4/Li+:O 5/Li+:H1 6/Li+:Li+ 7/Cl-:O 8/Cl-:H1 9/Cl-:Li+ 10/Cl-:Cl-
    tip3p.O1    tip3p.O1    2   
    tip3p.O1    tip3p.H2    3
    tip3p.H2    tip3p.H2    4
    Li.Li       tip3p.O1    5
    Li.Li       tip3p.H2    6
    Li.Li       Li.Li       7
    Cl.Cl       tip3p.O1    8
    Cl.Cl       tip3p.H2    9
    Li.Li       Cl.Cl       10
    Cl.Cl       Cl.Cl       11
