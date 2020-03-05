#!/bin/sh
#20689
nJob1=7919
maxJob1=$1

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
wait
#echo $nJob1
