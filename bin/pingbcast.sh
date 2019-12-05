#!/bin/sh

#BCAST="$(ip a | grep brd | grep inet | awk '{print $4}')"
#ping "${BCAST}"
ping -b `ip a | grep brd | grep inet | awk '{print $4}'`