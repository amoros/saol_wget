#!/bin/bash

##################################################
# Swedish Academy Dictionary
# http://www.saol.se
# Pages: 1 - 1131
# First page: http://sok.saol.se/pages/P1_M.jpg
#################################################

prefix="http://sok.saol.se/pages/P"
suffix="_M.jpg"

echo "Connecting to server...";

for i in {1..1131}
    do
        url+="$prefix$i$suffix"
        wget $url
        imageuri="P$i$suffix"
        cuneiform -l swe -f text -o "P$i.txt" $imageuri
        url=""
    done

echo "Finished downloading. Exiting."
