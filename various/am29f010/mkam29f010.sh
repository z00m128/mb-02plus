sjasmplus --syntax=fm --lst=am29f010flash.lst am29f010flash.a80
zmakebas -a 10 -n AM29F010 -o 001.tap am29f010flash.bas
bin2tap -o 002.tap am29f010.cod
cat 001.tap 002.tap > am29f010.tap
rm 001.tap 002.tap
