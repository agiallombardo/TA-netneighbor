#!/bin/sh
for i in $(ip -4 a | grep brd | awk '{print $4}'); do timeout 5s ping -b $i; done