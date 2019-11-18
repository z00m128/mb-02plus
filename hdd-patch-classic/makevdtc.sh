#!/bin/bash

# VDTCreator builder
# Requirements:
# sjasmplus
# bin2tap
# dirtap
# zmakebas

ASM="sjasmplus"
FILE="vdtcreator"

${ASM} --syntax=f -lst=${FILE}.lst ${FILE}.a80
zmakebas -a 9998 -n VDTCreator -o 001.tap ${FILE}.bas
bin2tap -o 002.tap -a 24576 ${FILE}.bin
cat 001.tap 002.tap > ${FILE}.tap
rm 001.tap 002.tap
dirtap ${FILE}.tap
