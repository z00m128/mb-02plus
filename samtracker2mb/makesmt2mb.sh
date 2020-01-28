#!/bin/bash

# Sample Tracker 2 MB builder
# Requirements:
# sjasmplus
# bin2tap
# dirtap
# zmakebas
# zx7

ASM="sjasmplus"
FILE="smt2mb"

mkdir -p bin

${ASM} --lst=${FILE}.lst ${FILE}.a80
zx7 ./bin/smt2mb.bin ./bin/smt2mb.pck
zx7 ./bin/smt2pg4.bin ./bin/smt2pg4.pck
zx7 ./inc/smt2title.scr ./bin/smt2scr.pck
${ASM} --lst=runner.lst runner.a80
${ASM} --lst=titlepic.lst titlepic.a80
zmakebas -a 20 -n SMT2MB -o smt2mb.tap ./inc/smt2mb.bas
bin2tap -append -o smt2mb.tap -a 24576 ./bin/smt2scr.cod
bin2tap -append -o smt2mb.tap -a 32768 ./bin/smt2main.cod
dirtap smt2mb.tap
