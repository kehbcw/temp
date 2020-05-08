#kerry Houlihan
#this script will display various information such as the name of the script,the name of the user, current date and time, current working directory, etc

#!/bin/bash


if [[ $# > 2 || $# < 1 ]]
then
  echo Invalid number of arguments given
  exit 1
fi

if [[ ! (-f "$1") ]]
then 
  echo File not given for first parameter.
  exit 1
fi

if [[ !( -d "$2") ]]
then 
  echo Directory not given for the second parameter
  exit 1
fi


echo Name of the Script: info.sh
echo Usage: $0
echo Current date and time:  $(date) 
echo Name of User: $USER
echo Current working directory: $(pwd)
echo Name of Unix machine: $HOSTNAME
echo Name of login shell: $SHELL
echo 

cat $1
echo 
cat $1 | wc -l

echo Listing of Directory given:
ls $2
echo Number of Paraters: $#
echo Calendar for October: 
cal 10  2020 
echo Disk Usage:
du
echo Current time: $(date '+ %X')
