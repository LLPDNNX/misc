# misc
Useful scripts and miscellania

# To resubmit crab jobs
`
for dir in NANOX_180727/*/crab_NANOX_180727/; do crab resubmit --maxmemory 4000 -d $dir; done 
`
