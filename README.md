# misc
Useful scripts and miscellania

# Keep annoying CRAB forever
`
while true; do for dir in *; do crab resubmit --dir $dir/crab_NANOX_190606/; done; date; sleep 3600; done
`
# To submit a job directly without a wrapper file at the IC batch system:
`
qsub -q hep.q -l h_rt=7200 -cwd -m email@ic.ac.uk -S /usr/bin/python script.py 
`
# To hadd nanoAOD friend ntuples in each subdirectory for faster reading
`
for dir in */; do rm $dir/nano.root && hadd $dir/nano.root $dir/*; done
`
