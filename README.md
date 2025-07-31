# ESE-PM7

## ESE-PM7: Easy Solvation Energy Evaluation from PM7 charges

### Introduction and User's Guide

*ESE-PM7* is a simple, non-iterative COSMO-based method for evaluation of *solvation free energies* of molecules and ions for [arbitrary solvents](https://github.com/vyboishchikov/ESE/blob/main/solvent-list.md) [2]. It requires semi-empirical gas-phase PM7 atomic charges only. To obtain the solvation free energy, the COSMO electrostatic term is supplemented by an extra correction that describes the cavitation energy, van der Waals and specific interactions. This term depends on atomic parameters that were adjusted using a reference dataset.

ESE-PM7 is essentially an adaptation of our [uESE](https://github.com/vyboishchikov/ESE) [3] and xESE [4] methods for semi-empirical charges.

The ESE-PM7 solvation free energy can be calculated by the program ESE-PM7:

- [ESE-PM7.exe](https://github.com/vyboishchikov/ESE-PM7/blob/main/ESE-PM7.exe) – Windows version  
- [ESE-PM7.x](https://github.com/vyboishchikov/ESE-PM7/blob/main/ESE-PM7.x) – Linux version  

These can be downloaded free of charge. The ESE-PM7 program can be called from the command line as follows:

An example of an input file is [available here](https://github.com/vyboishchikov/ESE-PM7/blob/main/input_example_i153.PM7-charges).

To convert a single-point PM7 Gaussian output to the charge input file, use this [shell script](https://github.com/vyboishchikov/ESE-PM7/blob/main/extract_Mulliken_charges.bash).  
Note: You need to run the Gaussian job with the option `PM7MOPAC`.

---

Once you use results calculated by the ESE-PM7 program, you should include the following citations:

**1.** S. F. Vyboishchikov, *ESE-PM7 program*, Girona, **2021**  
**2.** S. F. Vyboishchikov, A. A. Voityuk, [*J. Chem. Inf. Model.*, **2021**, *61*](https://pubs.acs.org/doi/10.1021/acs.jcim.1c00885), 4544–4553. DOI: 10.1021/acs.jcim.1c00885  
**3.** S. F. Vyboishchikov, A. A. Voityuk, [*J. Comput. Chem.*, **2021**, *42*](https://onlinelibrary.wiley.com/doi/abs/10.1002/jcc.26531), 1184–1194. DOI: 10.1002/jcc.26531  
**4.** A. A. Voityuk, S. F. Vyboishchikov, [*Phys. Chem. Chem. Phys.*, **2020**, *22*](https://pubs.rsc.org/en/content/articlelanding/2020/cp/d0cp02667k), 14591–14598. DOI: 10.1039/d0cp02667k  
**5.** A. A. Voityuk, S. F. Vyboishchikov, [*Phys. Chem. Chem. Phys.*, **2019**, *21*](https://pubs.rsc.org/en/content/articlelanding/2019/cp/c9cp03010g), 875–874. DOI: 10.1039/c9cp03010g  

---
Questions related to the ESE-PM7 method and program should be addressed to [Sergei Vyboishchikov](mailto:vyboishchikov@googlemail.com).
A [DFT](https://github.com/vyboishchikov/ESE) version of the program based on **CM5** charges is also available.
Fast [neural-network](https://github.com/vyboishchikov/ESE-GB-DNN) based methods are also available 
