sjasmplus --syntax=f --lst=reflasher.lst reflasher.a80
zmakebas -a 9998 -n ReFlasher -o 001.tap reflasher.bas
bin2tap -o 002.tap reflasher.bin
bin2tap -o firmwares.tap fw/boot.cod
bin2tap -append -o firmwares.tap fw/Diag.cod
bin2tap -append -o firmwares.tap fw/ESXMMC.cod
bin2tap -append -o firmwares.tap fw/ESXIDE.cod
bin2tap -append -o firmwares.tap fw/EasyHDD.cod
bin2tap -append -o firmwares.tap fw/MB02_1.cod
bin2tap -append -o firmwares.tap fw/MB02_2.cod
bin2tap -append -o firmwares.tap fw/MB02_3.cod
bin2tap -append -o firmwares.tap fw/MB02_4.cod
bin2tap -append -o firmwares.tap fw/MB02_5.cod
bin2tap -append -o firmwares.tap fw/MB02_6.cod
bin2tap -append -o firmwares.tap fw/DevAce.cod
bin2tap -append -o firmwares.tap fw/bios.cod
bin2tap -append -o firmwares.tap fw/H04bank0.cod
bin2tap -append -o firmwares.tap fw/H04bank1.cod
bin2tap -append -o firmwares.tap fw/H04bank2.cod
bin2tap -append -o firmwares.tap fw/H04bank3.cod
bin2tap -append -o firmwares.tap fw/H05bank0.cod
bin2tap -append -o firmwares.tap fw/H05bank1.cod
bin2tap -append -o firmwares.tap fw/H05bank2.cod
bin2tap -append -o firmwares.tap fw/H05bank3.cod
bin2tap -append -o firmwares.tap fw/64CHAR.cod
bin2tap -append -o firmwares.tap fw/PRETTY.cod
bin2tap -append -o firmwares.tap fw/GAMA81.cod
bin2tap -append -o firmwares.tap fw/GROOT.cod
bin2tap -append -o firmwares.tap fw/Derby++0.cod
bin2tap -append -o firmwares.tap fw/Derby++1.cod
bin2tap -append -o firmwares.tap fw/Derby++2.cod
bin2tap -append -o firmwares.tap fw/Derby++3.cod
bin2tap -append -o firmwares.tap fw/reserved.cod
bin2tap -append -o firmwares.tap fw/UnoDOS.cod
bin2tap -append -o firmwares.tap fw/CFDrv.cod
bin2tap -append -o firmwares.tap fw/FATware.cod
bin2tap -append -o firmwares.tap fw/MDOS3.cod
bin2tap -append -o firmwares.tap fw/TBIOS.cod
bin2tap -append -o firmwares.tap fw/DEMFIR.cod
bin2tap -append -o firmwares.tap fw/BSROM140.cod
bin2tap -append -o firmwares.tap fw/GW03.cod
bin2tap -append -o firmwares.tap fw/jgh.cod
cat 001.tap 002.tap firmwares.tap > ReFlashr.tap
rm 001.tap 002.tap firmwares.tap
