#!/bin/bash
# Program name: pingall.sh
echo
date
cat /home/sishak/server-list.txt |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo "server $output is up" 
    else
    echo "server $output is down"
    fi
done
