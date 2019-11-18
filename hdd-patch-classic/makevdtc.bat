sjasmplus --syntax=f --lst=vdtcreator.lst vdtcreator.a80
zmakebas -a 9998 -n VDTCreator -o 001.tap vdtcreator.bas
bin2tap -o 002.tap -a 24576 vdtcreator.bin
type 001.tap 002.tap > VDTCreator.tap
del 001.tap 002.tap
