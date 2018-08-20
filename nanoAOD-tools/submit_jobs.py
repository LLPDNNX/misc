import os
print "Creating a proxy..."
os.system("voms-proxy-init --valid 150:00 --voms cms --out proxy")

filePath = "samples/testing"
processDict = {}
for fName in os.listdir(filePath):
    if "SingleMu" in fName:

        print "reading in process ", fName,"..."
        process = fName.split(".")[0]
        print process
        processDict[process] = []
        with open(os.path.join(filePath, fName)) as f:
            for l in f:
                l = l.strip()
                print "adding '", l, "'"
                processDict[process].append(l)
                sub_string = "qsub submit_job.sh "+l+" "+process
                print sub_string
                os.system(sub_string)
