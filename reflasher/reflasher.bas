5 poke val "23739", code "o": goto usr val "32768"
6 stop
10 load "boot" code val "49152": goto 5
11 load "Diag" code val "49152": goto 5
12 load "ESXMMC" code val "49152": load "ESXIDE" code val "57344": goto 5
13 load "EasyHDD" code val "49152": goto 5
14 load "MB02_1" code val "49152": goto 5
15 load "MB02_2" code val "49152": goto 5
16 load "MB02_3" code val "49152": goto 5
17 load "MB02_4" code val "49152": goto 5
18 load "MB02_5" code val "49152": goto 5
19 load "MB02_6" code val "49152": goto 5
27 load "DevAce" code val "49152": goto 5
28 load "bios" code val "49152": goto 5
29 load "reserved" code val "49152": goto 5
30 load "reserved" code val "49152": goto 5
31 load "reserved" code val "49152": goto 5
32 load "reserved" code val "49152": goto 5
33 load "H04bank0" code val "49152": goto 5
34 load "H04bank1" code val "49152": goto 5
35 load "H04bank2" code val "49152": goto 5
36 load "H04bank3" code val "49152": goto 5
37 load "H05bank0" code val "49152": goto 5
38 load "H05bank1" code val "49152": goto 5
39 load "H05bank2" code val "49152": goto 5
40 load "H05bank3" code val "49152": goto 5
41 load "64CHAR" code val "49152": goto 5
42 load "PRETTY" code val "49152": goto 5
43 load "GAMA81" code val "49152": goto 5
44 load "GROOT" code val "49152": goto 5
45 load "Derby++0" code val "49152": goto 5
46 load "Derby++1" code val "49152": goto 5
47 load "Derby++2" code val "49152": goto 5
48 load "Derby++3" code val "49152": goto 5
49 load "reserved" code val "49152": goto 5
50 load "reserved" code val "49152": goto 5
51 load "reserved" code val "49152": goto 5
52 load "reserved" code val "49152": goto 5
53 stop
60 load "CFDrv" code val "49152": goto 5
61 load "ESXMMC" code val "49152": load "FATware" code val "57344": goto 5
62 load "ESXMMC" code val "49152": load "MDOS3" code val "57344": goto 5
63 load "ESXMMC" code val "49152": load "TBIOS" code val "57344": goto 5
64 load "ESXMMC" code val "49152": load "UnoDOS" code val "57344": goto 5
65 load "ESXMMC" code val "49152": load "DEMFIR" code val "57344": goto 5
9997 stop
9998 border not pi: paper not pi: ink val "7": clear val "32767"
9999 poke val "23739", code "o": load "reflasher" code val "32768" : run
