# AD 6/23/2026 ICXC NIKA
from episol import epipy
import numpy as np
import gridData
import matplotlib.pyplot as plt
# ---------------------------- #
x = epipy("peg.gro","topol.top",True)
x.closure = 'KH'
x.err_tol = 1e-04
x.ndiis = 5
x.report("test_box")
x.rism(1000,resolution=1)
x.kernel(nt=32)
g = x.select_grid()
#x.reader("guv_peg.txt",file_out="guv_peg.dx",dx=True)
#tmp = np.loadtxt("guv_peg.txt",usecols=(-1)).reshape(30,30,30)
plt.pcolormesh(g[15])
plt.show()
data = gridData.Grid(g,delta=[1.0,1.0,1.0],origin=[0,0,0])
data.export("peg_test.dx")
# ========================== #
