## CF Driver

This is CF/HDD driver for MB-02+ and MB-03+ Ultimate, based on Dron's HDD patch v1.62. It automatically finds dedicated partition on CF/HDD and installs itself to BSDOS. There are separate versions for MB-02+ and for MB-03+. FlashBoot version for MB-02+ is also available.

### Features
- supports only master devices
- automatic detection of dedicated partition
- automatic installation
- LBA mode
- DMA transfers
- CHS mode supported for older devices

### Usage
With linux fdisk create partition type 47h on your CF card (or HDD). It should be not bigger than ~530MB, as BSDOS cannot handle bigger space. You can use also _zxfdisk_ for this operation. Only 24bit LBA addresses are supported, so the partition should be at the beginning of the media, if you are using large CF/HDD.

Then fill up the partition with your 2097152 bytes sized MBD images joined together to one big file, insert the media to your MB-02+/MB-03+, enjoy!

### Requirements for build

- _[SjASMPlus](https://github.com/z00m128/sjasmplus/releases)_ cross assembler
- _[zmakebas](https://github.com/z00m128/zmakebas)_ utility
- _[bin2tap](https://sourceforge.net/projects/zxspectrumutils/)_ utility
- _[dirtap](https://sourceforge.net/projects/zxspectrumutils/)_ utility