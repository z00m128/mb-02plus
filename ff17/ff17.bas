10 REM Busy'94 & z00m'19
20 REM Format F02-V34
30 GO TO VAL "60"
40 CLEAR VAL "24575"
50 LOAD "ff17"CODE : STOP
60 DIM m$(10)
80 REM Set parameters:
90 REM drv:1..255
100 REM hdd:0=DD,1=HD
110 REM trk:1..255
120 REM sec:2..16
125 REM una:0=normal
126 REM     1=unattended
130 REM Name:10 characters
145 LET una=0
150 LET m$="NameOfDisk"
160 LET drv=1
170 LET hdd=1
180 LET trk=82
190 LET sec=11
205 POKE VAL "65301",una
210 POKE VAL "63492";trk
220 POKE VAL "63494";sec
230 POKE VAL "63521",drv
240 POKE VAL "63522",hdd
250 POKE VAL "63526",m$
260 RANDOMIZE USR VAL "63672"