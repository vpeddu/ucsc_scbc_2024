#!/usr/bin/env bash
# first_script.sh
# rreggiar@ucsc.edu
# 2022-07-18

script_name='first_script.sh' # variable_name = value
input_var='10' 
input_userID='1000' 

echo The name of this script is: $script_name 
# echo can print combinations of text and variables
echo Your user ID is: $input_userID
# some values, like PWD, are stored in 'global' variables
echo Your present working directory is: $PWD
# to execute cmdline tools, wrap them in $()
echo The contents of $PWD are: $(ls)
