#Kerry Houlihan
#the script will take in a directory as a parameter and loop through all the files in the directory if it has none add the name of the directory to a text file exit if the correct parameters aren't given

#!/bin/bash

if [[ $# != 1 || !(-d $1) ]]
then 
  echo usage: $0 $#
  exit 1
fi

for file in "$1"/*
do
  echo "$file"
done

if [ ! "$( ls -A $1)" ]
then 
  echo "$1" >> EmptyDir.txt
fi
