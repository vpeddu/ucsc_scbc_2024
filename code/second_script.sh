#!/usr/bin/env bash
# second_script.sh
# rreggiar@ucsc.edu
# 2022-07-18

cmd_recieved=$0 # $0 stores the command entered to the cmd line
script_name=$(basename $0) # basename extracts the last entry in a path
input_var=${1:-10} # $1 stores the first cmd line argument
# :-VAL sets VAL to the default value of the argument
print_info=${2:-"TRUE"} # $2 stores the second cmd line argument

if [ $print_info = "TRUE" ]; then
	echo "command: " $cmd_recieved
	# echo can print combinations of text and variables
	echo "The name of this script is: " $script_name 
	# bash can do math inside $(())
	echo $input_var / 2 = $((input_var/2))
fi

