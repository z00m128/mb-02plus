#!/bin/bash

# HDD Patch classic builder
# Requirements:
# sjasmplus
# bin2tap
# dirtap
# zmakebas

ASM="sjasmplus"
FILE="hdpclassic"

${ASM} --syntax=fm --lst=${FILE}.lst ${FILE}.a80
zmakebas -a 10 -n HDPclassic -o 001.tap ${FILE}.bas
bin2tap -o 002.tap ${FILE}.bin
cat 001.tap 002.tap > ${FILE}.tap
rm 001.tap 002.tap
dirtap ${FILE}.tap
