10 border not pi: paper not pi: ink val "7": clear val "32767"
20 load "am29f010" code val "32768": goto usr val "32768"
30 stop
9000 input "Enter file name: ";n$
9010 poke val "23739", code "o":load n$ code val "49152"
9020 run 20
9030 stop
