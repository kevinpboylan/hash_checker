#!/usr/bin/bash
# FILES="~/Documents/Fullstack_labs/13/possible_malwares/bin/*"
for i in $(dir $1)
# for F in ~/Documents/Fullstack_labs/13/possible_malwares/bin/
	do
	md5=$(sha256sum "$1/$i" | cut -d  " " -f 1)
	for h in $(cat $2)
		do
			if [ "$h" == "$md5" ]
			then
				tput setaf 1
				echo "File: $i"
				echo "Path: $1"
				echo "MD5:  $h"
				echo ""
				tput setaf 7
			fi
	done
done