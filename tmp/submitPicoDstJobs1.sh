#!/bin/sh
#nJob1=$1
nJob1=0
maxJob1=$1
#nJob2=$3
# nJob2=0
# maxJob2=$2
DEBUG=true
while [ $nJob1 -le $maxJob1 ]
do
    inputPar1=$nJob1

    echo $inputPar1
    if ${DEBUG}; then
    star-submit-template -template submitPicoDstJobs1.xml -entities myFileName=entryRange_$nJob1,entryTestPar1=$inputPar1

    fi
    ((nJob1++))
done
#echo $nJob1
