#!/bin/bash

# mbd diskette image patcher
# change image geometry to 93x11
#
# usage: ./patchimages.sh prefix image1.mbd [image2.mbd] ... [imageN.mbd]
#
# (c) 2009 ub880d

if [ $# -le 1 ]
then
	echo "Usage: $0 prefix image1.mbd [image2.mbd] ... [imageN.mbd]"
	exit 1
fi

prefix="$1"
shift

while [ $# -ge 1 ]
do
	file="$1"
	shift
		
	if [ ! -f "$file" ]
	then
		echo "$file: no such file"
		continue
	fi
	
	# how big is image
	size=$(stat -c%s "$file")
	if [[ $size -gt 2097152 ]] 
	then
		echo "$file: skipped, larger than 2MB"
		continue
	fi
	
	# how many bytes we need to add to have 2MB image?
	zsize=$(( 2097152-$size ))
	
	ofile="${prefix}_${file}"
	
	# copy image
	dd if="$file" of="$ofile" bs=$size count=1 2>/dev/null
	
	# copy zero bytes
	[[ $zsize -gt 0 ]] && dd if=/dev/zero bs=$zsize count=1 >> "$ofile" 2>/dev/null

	tracks="\x5d\x00"		# 93 tracks
	sects="\x0b\x00"		# 11 sectors per track
	
	# now patch geometry
	echo -e -n "$tracks$sects" | dd of="$ofile" conv=notrunc bs=4 seek=1 count=1 2>/dev/null 
	
	echo "$file copied to $ofile"
done
