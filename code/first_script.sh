#!/usr/bin/env bash
# first_script.sh
# rreggiar@ucsc.edu
# 2022-07-18

script_name='first_script.sh' # basename extracts the last entry in a path
input_var='10' # $1 stores the first cmd line argument
input_userID='1000' # $USER is a global bash variable that stores your user ID

echo The name of this script is: $script_name 
# echo can print combinations of text and variables
echo Your user ID is: $input_userID
# some values, like PWD, are stored in 'global' variables
echo Your present working directory is: $PWD
# to execute cmdline tools, wrap them in $()
echo The contents of $PWD are: $(ls)
