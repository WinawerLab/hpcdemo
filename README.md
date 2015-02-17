# hpcdemo
Demo of how to use NYU HPC.

To run this demo, submit the .pbs script using the "qsub" command
on the HPC.
IMPORTANT: you must first replace YOURUSERNAME in the pbs script with
your actual NYU netID.

The main script is "matlabtest.m" which will create an input directory
and download input data, convert a simple .mat file of images to individual
.png's as a dummy task, and create an output directory and save the .pngs.

