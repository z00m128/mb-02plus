sjasmplus --syntax=f --lst=reflasher.lst reflasher.a80
zmakebas -a 9997 -n ReFlasher -o 001.tap reflasher.bas
bin2tap -o 002.tap reflasher.bin
type 001.tap 002.tap > ReFlasher.tap
del 001.tap 002.tap
pause