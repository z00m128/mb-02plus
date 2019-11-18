## HDD patch classic

This is HDD patch for MB-02+ (or MB-03+ Ultimate), based on Dron's HDD patch v1.62. The purpose is to keep the patch alive for people who do not like EasyHDD.

### Requirements

- _[SjASMPlus](https://github.com/z00m128/sjasmplus/releases)_ cross assembler
- _[zmakebas](https://github.com/z00m128/zmakebas)_ utility
- _[bin2tap](https://sourceforge.net/projects/zxspectrumutils/)_ utility
- _[dirtap](https://sourceforge.net/projects/zxspectrumutils/)_ utility

### Usage
With linux fdisk create partition type 47h on your CF card (or HDD). It should be not bigger than ~503MB. You can use also _zxfdisk_ for this operation.

Change ports according your hardware in both _hdpclassic.a80_ and _vdtcreator.a80_. Default is PVL ports. Create tap files by running _makehdp.sh_ or in windows _makehdp.bat_, then _makevdtc.sh_ or _makevdtc.bat_.

Transfer both tap files to your MB-02+ or MB-03+ Ultimate, then run _VDTCreator_ and make VDT. After that you can run _HDPclassic_, make _.KILL_ and reset the computer. And that's it.
