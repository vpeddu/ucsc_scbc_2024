#!/usr/bin/env bash
# rreggiar@ucsc.edu
# 2022-07-18

script_path=$0 # $0 stores the name of the script in its path
script_name=$(basename $0) # basename extracts the last entry in a path
input_var=${1:-10} # $1 stores the first cmd line argument
input_userID=$UID # $USER is a global bash variable that stores your user ID

echo The name of this script is: $script_name 
# echo can print combinations of text and variables
echo Your user ID is: $input_userID
# bash can do math inside $(())
echo $input_var / 2 = $((input_var/2))

