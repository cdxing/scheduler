#!/bin/bash

nJob1=$1
# sys_cutN

nJob2=$2
# sys_varN

nJob3=$3
# inter

star-submit-template -template submitPicoDstJobs_v2_sysErr.xml -entities cutID=$nJob1,varID=$nJob2,iterID=$nJob3
