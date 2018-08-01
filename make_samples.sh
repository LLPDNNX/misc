#!/bin/bash
echo Creating directories
for directory in $(ls /vols/build/cms/vc1117/CMSSW_9_4_9/src/crab/NANOX_180727/)
do 
    file=$directory.txt
    rm $file 2> /dev/null
    echo Writting to $file
    touch $file
    srmls srm://gfe02.grid.hep.ph.ic.ac.uk/pnfs/hep.ph.ic.ac.uk/data/cms/store/user/vcepaiti/LLP/NANOX_180727/$directory -recursion_depth=6 2>&1 | grep ".root" | awk '{print "root://gfe02.grid.hep.ph.ic.ac.uk",$2}' | tr -d ' ' >> $file

done
