#!/bin/bash

# CF Driver builder
# Requirements:
# sjasmplus
# bin2tap
# dirtap

ASM="sjasmplus"
FILE="cf-driver"

${ASM} --syntax=f --lst=${FILE}.lst ${FILE}.a80
bin2tap -o ${FILE}.tap -a 32768 -b -c 32767 -r 32768 ${FILE}.bin
dirtap ${FILE}.tap
