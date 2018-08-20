#!/bin/bash
#$ -wd /vols/build/cms/vc1117/CMSSW_10_2_0_pre6/src/batch_output
#$ -j y
#$ -q hep.q
#$ -l h_rt=24:0:0 

source /vols/grid/cms/setup.sh
cd /vols/build/cms/vc1117/CMSSW_10_2_0_pre6/src
eval `scramv1 runtime -sh`
export X509_USER_PROXY=/vols/build/cms/vc1117/CMSSW_10_2_0_pre6/src/proxy

echo Using file $1

python /vols/build/cms/vc1117/CMSSW_10_2_0_pre6/src/PhysicsTools/NanoAODTools/test/trigger_studies.py --file $1 --process $2
