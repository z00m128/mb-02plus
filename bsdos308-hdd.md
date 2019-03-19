bsdo308 with HDD BIOS
---------------------

This is standard bsdos308, but FDC BIOS was replaced with HDD BIOS, which allows to read ATA devices directly, without EasyHDD. There are two versions 8sec (8x128 images geometry) and 11sec (11x93 images geometry).

how to:
-------

1. Get any CF (or SD) card, create one empty partition on it, type #47. Maximum size you can use with BSDOS is ~540MB theoretically, so 512MB CF is enough.

2. Join your MBD images from EasyHDD to one big file (e.g. using 'cat' command).

3. Write the big file to your #47 partition (no FAT filesystem needed). Use 'dd' command in linux (you will need some tool for that in Windows).

4. Install CF to your MBIDE, install bsdos308-hdd and that's it.

NOTE:  This is still in proof of concept phase only! The floppy will not work with this bsdos version!
