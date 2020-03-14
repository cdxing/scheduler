#!/bin/sh
# ./submitPicoDstJobs1.sh 0 1999
# ./submitPicoDstJobs1.sh 2000 3999
# ./submitPicoDstJobs1.sh 4000 5999
# ./submitPicoDstJobs1.sh 6000 7999
# ./submitPicoDstJobs1.sh 8000 9999
# ./submitPicoDstJobs1.sh 10000 11999
# ./submitPicoDstJobs1.sh 12000 13999
# ./submitPicoDstJobs1.sh 14000 15999
# ./submitPicoDstJobs1.sh 16000 17999
# ./submitPicoDstJobs1.sh 18000 19999
# ./submitPicoDstJobs1.sh 20000 20689
nJob1=$1
maxJob1=$2

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
