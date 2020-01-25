#!/bin/bash

# CF Driver builder
# Requirements:
# sjasmplus
# bin2tap
# dirtap
# zmakebas

ASM="sjasmplus"
FILE="cf-driver"

${ASM} --syntax=fm --lst=${FILE}.lst ${FILE}.a80
zmakebas -a 10 -n cf-driver -o 001.tap ${FILE}.bas
bin2tap -o 002.tap -a 25000 flash3.cod
bin2tap -o 003.tap -a 32768 ${FILE}.bin
cat 001.tap 002.tap 003.tap > 03-CF-Driver.tap
rm 001.tap 002.tap 003.tap
dirtap 03-CF-Driver.tap
