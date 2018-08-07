#!/bin/bash
#$ -wd /vols/cms/vc1117/batch_output/
#$ -q hep.q
#$ -l h_rt=12:0:0 
#$ -t 1-200
#$ -o unpack.$JOB_ID.out
#$ -e unpack.$JOB_ID.err
#$ -m ea -M vc1117@ic.ac.uk
#$ -j y

#ctau=$1

hostname
date
source ~/.cmssetup
cd /vols/build/cms/vc1117/CMSSW_9_4_9/src
eval `scramv1 runtime -sh`

cd /vols/build/cms/vc1117/XTagger/Unpacker
export X509_USER_PROXY=/vols/build/cms/vc1117/XTagger/Unpacker/proxy

./unpackNanoXFast /vols/cms/vc1117/unpacked_ntuples_v2/ctau_all 5 20 200 $((SGE_TASK_ID-1)) \
samples/TT_TuneCUETP8M2T4_13TeV-powheg-pythia8-evtgen.txt \
samples/TTJets_TuneCUETP8M2T4_13TeV-amcatnloFXFX-pythia8.txt \
samples/TTJets_HT-600to800_TuneCUETP8M1_13TeV-madgraphMLM-pythia8.txt \
samples/TTJets_HT-800to1200_TuneCUETP8M1_13TeV-madgraphMLM-pythia8.txt \
samples/TTJets_HT-1200to2500_TuneCUETP8M1_13TeV-madgraphMLM-pythia8.txt \
samples/TTJets_HT-2500toInf_TuneCUETP8M1_13TeV-madgraphMLM-pythia8.txt \
samples/QCD_Pt_120to170_TuneCUETP8M1_13TeV_pythia8.txt \
samples/QCD_Pt_170to300_TuneCUETP8M1_13TeV_pythia8.txt \
samples/QCD_Pt_300to470_TuneCUETP8M1_13TeV_pythia8.txt \
samples/QCD_Pt_30to50_TuneCUETP8M1_13TeV_pythia8.txt \
samples/QCD_Pt_470to600_TuneCUETP8M1_13TeV_pythia8.txt \
samples/QCD_Pt_50to80_TuneCUETP8M1_13TeV_pythia8.txt \
samples/QCD_Pt_600to800_TuneCUETP8M1_13TeV_pythia8.txt \
samples/QCD_Pt_800to1000_TuneCUETP8M1_13TeV_pythia8.txt \
samples/QCD_Pt_80to120_TuneCUETP8M1_13TeV_pythia8.txt \
samples/T1qqqqLL_ctau-0p001_Madgraph_Pythia_GEN-SIM.txt \
samples/T1qqqqLL_ctau-0p01_Madgraph_Pythia_GEN-SIM.txt \
samples/T1qqqqLL_ctau-0p1_Madgraph_Pythia_GEN-SIM.txt \
samples/T1qqqqLL_ctau-1_Madgraph_Pythia_GEN-SIM.txt \
samples/T1qqqqLL_ctau-10_Madgraph_Pythia_GEN-SIM.txt \
samples/T1qqqqLL_ctau-100_Madgraph_Pythia_GEN-SIM.txt \
samples/T1qqqqLL_ctau-1000_Madgraph_Pythia_GEN-SIM.txt \
samples/T1qqqqLL_ctau-10000_Madgraph_Pythia_GEN-SIM.txt \
samples/T1qqqqLL_ctau-100000_Madgraph_Pythia_GEN-SIM.txt \

date
