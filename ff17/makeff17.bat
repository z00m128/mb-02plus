@sjasmplus --syntax=fm --lst=ff17.lst ff17.a80
@zmakebas -a 40 -n FF17 -o 001.tap ff17.bas
@bin2tap -o 002.tap -a 63488 ff17.bin
@type 001.tap 002.tap > ff17.tap
@del 001.tap 002.tap
@dirtap ff17.tap
