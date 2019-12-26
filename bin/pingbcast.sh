#!/bin/sh
export DATE=`date "+%m-%d-%Y %H:%M:%S.%3N %z"`
echo $DATE
for i in $(ip -4 a | grep brd | awk '{print $4}'); do timeout 5s ping -b $i; done; arp -ev
