#!/bin/sh

V="$(uname -a | awk '{print $3})'"

echo "${V}"

BCAST="$(ip a | grep brd | grep inet | awk '{print $4}')"

echo "${BCAST}"
