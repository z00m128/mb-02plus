BS-DOS 308 Boot Disk with fixed DMA sequence
============================================

This is new boot disk for MB-02+, which contains
a fixed set of boot files, which should work on
all other DMA chips, not only on UA858D.

!NOTE!
The boot ROM has also wrong DMA sequence in its
routines, so it must be reprogrammed too!

What was changed?
-----------------

- BSROM 118 was replaced with newer BSROM 140
- in Masterboot the jump to 128k reset was changed
  to correspondig address in BSROM 140 ($3906)
- fixed DMA sequence in MakeSYS tool, so FDC BIOS
  now works with new DMA sequence.

Installation:
-------------

1. Burn new booter to your 27C16 EPROM.
   It is simple booter, without any graphic or text.
   After ZX Spectrum is turned on, it waits for boot
   disk and when it's inserted it boots the system.
   Nothing more.

2. If you already have 29C256 or 28C256 instead of 27C16,
   you can reprogam it on the fly. Just use corresponding
   flash utility stored in directory $1 on boot disk.
   There are two binaries for flashing:
   8bcBootROM - original BootROM by 8BC with animation
   DMAfixBOOT - simple booter

3. Insert new bootdisk and let it boot. Done!

Other instructions:
-------------------

From now onwards you have to use new MakeSYS, when you
want to create new boot disk, since the old MakeSYS uses
the wrong DMA sequence.

You can then use the Masterboot and BSdos308 files from
old boot disk by Busy or 8BC, if you want to stay on 
BSROM 118. These files are hardware independent.


Future plans:
-------------

- to implement some messages to booter, so user is informed
  what is going on

(c)2018 z00m, Busy, Poke, LMN

https://github.com/z00m128/mb-02plus
https://z00m.speccy.cz/?file=mb-02
