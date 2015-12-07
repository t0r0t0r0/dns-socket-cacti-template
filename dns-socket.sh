#!/bin/bash
#

outputudpsocket=`netstat -anu|awk '{print $5" "$6}'|grep ":53 "|wc -l`
outputtcpsocket=`netstat -ant|awk '{print $5" "$6}'|grep ":53 "|wc -l`

echo "outputudpsocket:${outputudpsocket} outputtcpsocket:${outputtcpsocket}"
