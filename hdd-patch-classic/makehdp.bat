sjasmplus --syntax=fm --lst=hdpclassic.lst hdpclassic.a80
zmakebas -a 10 -n HDPclassic -o 001.tap hdpclassic.bas
bin2tap -o 002.tap hdpclassic.bin
type 001.tap 002.tap > HDPclassic.tap
del 001.tap 002.tap
