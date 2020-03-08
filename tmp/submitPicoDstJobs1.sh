#!/bin/sh
# ./submitPicoDstJobs1.sh
# 0 1999
# 2000 3999
# 4000 5999
# 6000 7999
# 8000 9999
# 10000 11999
# 12000 13999
# 14000 15999
# 16000 17999
# 18000 19999
# 20000 20689
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
