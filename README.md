# misc
Useful scripts and miscellania

# To resubmit crab jobs
`
for dir in NANOX_180727/*/crab_NANOX_180727/; do crab resubmit --maxmemory 4000 -d $dir; done 
`
# To submit a job directly without a wrapper file at the IC batch system:
`
qsub -q hep.q -l h_rt=7200 -cwd -m email@ic.ac.uk -S /usr/bin/python script.py 
`
# To hadd nanoAOD friend ntuples in each subdirectory for faster reading
`
for dir in */; do rm $dir/nano.root && hadd $dir/nano.root $dir/*; done
`
