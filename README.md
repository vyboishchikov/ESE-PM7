# ESE-PM7
<span style="font-size:36pt;font-family:Open Sans;font-weight:normal"><b>ESE-PM7: Easy Solvation Energy Evaluation from PM7 charges</b></span>

<h2><span style="font-family:Open Sans">Introduction and User's Guide</span></h2>

<p style="margin-top:12pt;margin-right:0cm;margin-bottom:0cm;margin-left:0cm"> <span 
style="font-family:Open Sans"><i>ESE-PM7</i> is a simple, non-iterative COSMO-based 
method for evaluation of <i>solvation free energies</i> of molecules and ions for
<a href="https://github.com/vyboishchikov/ESE/blob/main/solvent-list.md"> arbitrary 
solvents</a> [2]. It requires semi-empirical gas-phase PM7 atomic charges only. To obtain 
the solvation free energy, the COSMO electrostatic term is supplemented by an extra 
correction that describes the cavitation energy, van der Waals and specific interactions. 
This term depends on atomic parameters that were adjusted using a reference 
dataset.</span></p>

<p style="margin-top:12pt;margin-right:0cm;margin-bottom:0cm;margin-left: 0cm">
<span style="font-family:Open Sans">ESE-PM7 is essentially an adaptation of our
<a href="https://github.com/vyboishchikov/ESE"> uESE</a> [3] and xESE [4] methods for
semi-empirical charges.

</span></p><p style="margin-top:12pt;margin-right:0cm;margin-bottom:0cm;margin-left:0cm">
<span style="font-family:Open Sans">The ESE-PM7 solvation free energy can be calculated by 
the program ESE-PM7:</span></p>

<p style="margin:0cm"><a href="https://github.com/vyboishchikov/ESE-PM7/blob/main/ESE-PM7.exe">
<span style="font-family:Open Sans">ESE-PM7.exe</span></a>
<span style="font-family:Open Sans"> – Windows version</span>
</p><p style="margin:0cm"><a href="https://github.com/vyboishchikov/ESE-PM7/blob/main/ESE-PM7.x">
<span style="font-family:Open Sans">ESE-PM7.x</span></a>
<span style="font-family:Open Sans"> – Linux version</span></p>

<p style="margin:0cm"><span style="font-family:Open Sans">
which can be downloaded here free of charge. The ESE-PM7 program can
be called from the command line as follows:</span></p>

<p style="margin-top:6pt;margin-right:0cm;margin-bottom:0cm;margin-left:0cm">
<b><tt>ESE-PM7.exe <i>input-file</i> -solvent <i>solvent</i></tt></b></p>

<p style="margin-top:12pt;margin-right:0cm;margin-bottom:0cm;margin-left:0cm">
<span style="font-family:Open Sans"> An example of an input file is
<a href="https://github.com/vyboishchikov/ESE-PM7/blob/main/input_example_i153.PM7-charges"> available</a></span>.</p>

<p style="margin-top:12pt;margin-right:0cm;margin-bottom:0cm;margin-left:0cm">
<span style="font-family:Open Sans">
For converting a single-point PM7 Gaussian output to the charge input file a

<a href="https://github.com/vyboishchikov/ESE-PM7/blob/main/extract_Mulliken_charges.bash"> 
shell script</a> can be employed. Note that you need to run a Gaussian 
job with the option <tt>PM7MOPAC</tt>.</span>

<p style="margin-top:12pt;margin-right:0cm;margin-bottom:0cm;margin-left:0cm">
<span style="font-family:Open Sans">
Once you use results calculated by the ESE-PM7 program, you should include the
following citations:
</span></p>
<p style="margin:0cm"><span style="font-family:Open Sans">
<b>1</b>. S. F. Vyboishchikov, ESE-PM7 program,
Girona, <b>2021</b></span></p>

<p style="margin:0cm"><span style="font-family:Open Sans"><b>2</b>. S. F. Vyboishchikov, A. A. Voityuk, <a href="https://pubs.acs.org/doi/10.1021/acs.jcim.1c00885?ref">
<i>J. Chem. Inf. Model., </i><b>2021</b>, <i> 61</i></a>, 4544–4553. DOI: 10.1021/acs.jcim.1c00885 </span></p>
<p style="margin:0cm"><span style="font-family:Open Sans"><b>3</b>. S. F. Vyboishchikov, A. A. Voityuk, <a href="https://onlinelibrary.wiley.com/doi/abs/10.1002/jcc.26531">
<i>J. Comput. Chem., </i><b>2021</b>, <i> 42</i></a>, 1184–1194. DOI: 10.1002/jcc.26531</span></p>

<p style="margin:0cm"><span style="font-family:Open Sans"><b>4</b>. A. A. Voityuk, S. F. Vyboishchikov,
<a href="https://pubs.rsc.org/en/content/articlelanding/2020/cp/d0cp02667k"><i>Phys. Chem. Chem. Phys.</i>
<b>2020</b>, <i>22</i></a>, 14591–14598. DOI: 10.1039/d0cp02667k</span></p>

<p style="margin:0cm"><span style="font-family:Open Sans"><b>5</b>. A. A. Voityuk,S. F. Vyboishchikov,
<a href="https://pubs.rsc.org/en/content/articlelanding/2019/cp/c9cp03010g">
<i> Phys. Chem. Chem. Phys.</i>, <b>2019</b>, <i>21</i></a>, 875–874. DOI: 10.1039/c9cp03010g</span></p>

<p class="MsoNormal"><span style="font-family:Open Sans">Questions
related to the ESE-PM7 method and program should be addressed to
<a href="mailto:vyboishchikov@googlemail.com">Sergei Vyboishchikov</a>.</span></p>

<p style='margin-top:6pt'><span style='font-family:Open Sans'>
A <a href="https://github.com/vyboishchikov/ESE">DFT</a> version of the program based on <b>CM5</b> charges is also available.</p>

