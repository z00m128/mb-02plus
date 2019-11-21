#!/bin/bash

# Format F02-V3x builder
# Requirements:
# sjasmplus
# bin2tap
# dirtap
# zmakebas

ASM="sjasmplus"
FILE="ff17"

${ASM} --syntax=f --lst=${FILE}.lst ${FILE}.a80
zmakebas -a 40 -n FF17 -o 001.tap ${FILE}.bas
bin2tap -o 002.tap -a 57344 ${FILE}.bin
cat 001.tap 002.tap > ${FILE}.tap
rm 001.tap 002.tap
dirtap ${FILE}.tap
