sjasmplus --syntax=fm --lst=28c256flash.lst 28c256flash.a80
zmakebas -a 10 -n 28C256 -o 001.tap 28c256flash.bas
bin2tap -a 30000 -o 002.tap 28c256.cod
cat 001.tap 002.tap > 28c256.tap
rm 001.tap 002.tap
