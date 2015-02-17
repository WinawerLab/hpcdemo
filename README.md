# hpcdemo
Demo of how to use NYU HPC.

To run this demo, first clone this repository in your /scratch/YOURUSERNAME
directory after logging into Mercer in the HPC. Then submit the PBS
script using the command "qsub runtest.pbs"
IMPORTANT: you must first replace YOURUSERNAME in the pbs script with
your actual NYU netID.

The main script is "matlabtest.m" which will create an input directory
and download input data, convert a simple .mat file of images to individual
.png's as a dummy task, and create an output directory and save the .pngs.

Note that the structure of keeping only the code in git, and moving the
data around separately, is good practice when using version control. Git
cannot handle large files easily, and Github will reject them.

More information on how to use the HPC can be found on the Winawerlab
wiki at https://wikis.nyu.edu/pages/viewpage.action?pageId=66784637
as well as on the NYU website at https://wikis.nyu.edu/display/NYUHPC/High+Performance+Computing+at+NYU.