#!/usr/bin/bash


md5_to_test=$1
TARGET_DIR=$2
FILES=~/Documents/Fullstack_labs/13/possible_malwares/bin/*
for F in $TARGET_DIR #for some reason, this only hashes the first file in the directory, not each of them
# for F in ~/Documents/Fullstack_labs/13/possible_malwares/bin/*
  do
	md5_from_file=$(sha256sum $F | cut -d " " -f1)  
  	if [[ $md5_to_test == $md5_from_file ]]
  	then
     		echo "The matching file is: $F"
     		break
    	else
     		echo "Checking $F..."
     		echo "$md5_from_file"
     		echo "......................."
  	fi

done
