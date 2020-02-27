5 poke val "23739", code "o": goto usr val "32768"
6 stop
10 load "boot" code val "49152": run
11 load "Diag" code val "49152": run
12 load "ESXMMC" code val "49152": load "ESXIDE" code val "57344": run
13 load "EasyHDD" code val "49152": run
14 load "MB02_1" code val "49152": run
15 load "MB02_2" code val "49152": run
16 load "MB02_3" code val "49152": run
17 load "MB02_4" code val "49152": run
18 load "MB02_5" code val "49152": run
19 load "MB02_6" code val "49152": run
27 load "DevAce" code val "49152": run
28 load "bios" code val "49152": run
29 load "reserved" code val "49152": run
30 load "reserved" code val "49152": run
31 load "reserved" code val "49152": run
32 load "reserved" code val "49152": run
33 load "H04bank0" code val "49152": run
34 load "H04bank1" code val "49152": run
35 load "H04bank2" code val "49152": run
36 load "H04bank3" code val "49152": run
37 load "H05bank0" code val "49152": run
38 load "H05bank1" code val "49152": run
39 load "H05bank2" code val "49152": run
40 load "H05bank3" code val "49152": run
41 load "64CHAR" code val "49152": run
42 load "PRETTY" code val "49152": run
43 load "GAMA81" code val "49152": run
44 load "GROOT" code val "49152": run
45 load "Derby++0" code val "49152": run
46 load "Derby++1" code val "49152": run
47 load "Derby++2" code val "49152": run
48 load "Derby++3" code val "49152": run
49 load "reserved" code val "49152": run
50 load "reserved" code val "49152": run
51 load "reserved" code val "49152": run
52 load "reserved" code val "49152": run
53 stop
60 load "CFDrv" code val "49152": run
61 load "ESXMMC" code val "49152": load "FATware" code val "57344": run
62 load "ESXMMC" code val "49152": load "MDOS3" code val "57344": run
63 load "ESXMMC" code val "49152": load "TBIOS" code val "57344": run
64 load "ESXMMC" code val "49152": load "UnoDOS" code val "57344": run
65 load "ESXMMC" code val "49152": load "DEMFIR" code val "57344": run
9997 stop
9998 border not pi: paper not pi: ink val "7": clear val "32767"
9999 poke val "23739", code "o": load "reflasher" code val "32768" : run