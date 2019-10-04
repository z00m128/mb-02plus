@echo off
sjasmplus --lst=smt2mb.lst smt2mb.a80
zx7 .\bin\smt2mb.bin .\bin\smt2mb.pck
zx7 .\bin\smt2pg4.bin .\bin\smt2pg4.pck
zx7 .\inc\smt2title.scr .\bin\smt2scr.pck
sjasmplus --lst=runner.lst runner.a80
sjasmplus --lst=titlepic.lst titlepic.a80
zmakebas -a 20 -n SMT2MB -o smt2mb.tap .\inc\smt2mb.bas
bin2tap -append -o smt2mb.tap -a 24576 .\bin\smt2scr.cod
bin2tap -append -o smt2mb.tap -a 32768 .\bin\smt2main.cod
dirtap smt2mb.tap