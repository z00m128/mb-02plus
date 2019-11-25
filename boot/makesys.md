makesys
-------

This utility helps with creation of new system (boot) floppy disk.
It injects system loader into boot sector of floppy disk, which is
executed during boot.

how to:
-------

1. Format floppy disk in high density, double sided, 11 sectors per track, at least 8 tracks, no errors on tracks 5 to 8.

2. Run NEW "makesys", insert new disk to active floppy drive and press Enter.

3. Run "Setup" program, set up your connected floppy drives and write config to the new disk.

4. Copy "MasterBoot" and "BSdos308" files to the new disk. Now the boot disk is ready

5. If you want to run any programs automatically at boot, copy "autosys" and  "autoexe" files to the new disk. Content of "autoexe" can be freely modified to your specific needs.
