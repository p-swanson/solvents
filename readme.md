this repo stores solvent data for 3DRISM calculations
----------------------------------------------------

In the 3DRISM equation, we have the solvent susceptability $\omega$, this represents solvent inter- and intra-molecular correlation.
Intra-correlation is easy, its just bonds.. inter-solvent is RDFs. 
So, hypothetically, as long as we have pairwise RDFs $g_{vv}(r)$ between all solvent sites, we can use any solvent in a 3DRISM calculation. 

Unlike Forcefields parameters/files that are easily accesible/distributed, files containing $g_{vv}(r)$ are non-existant, and must be user-crafted for each new molecule. Here, I attempt to combat this issue my creating a repo for $g_{vv}(r)$ files to be used in 3DRISM calculations (see: EPISOL). The files must be calculated with the following specifications:

* If MD is used, proper FF
* RDF resolution is at 0.025 $\mathring{A}$ or better

----------------------------------------------------

This repo serves as a database for different solvent files that anyone can use. I will continue to upload files on a regular basis.

* for proper conditions please use https://www.virtualchemistry.org/

NOTES FOR SUBMISSION
------------------------------------------
* the longer the RDF, the better. typical RDFs of length ~2.5 $\mathring{A}$ are insufficient
* 1DRISM is sufficient for small solvents, i.e. water, ions.
* if using 1DRISM, compare to known RDFs
