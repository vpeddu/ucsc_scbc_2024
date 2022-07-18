#!/bin/bash
# rreggiar@ucsc.edu
# 2022-07-18

script_path=$0
script_name=$(basename $0)
input_var=${1:-10}
input_user=$USER

echo The name of this script is: $script_name

echo The user of this script is: $input_user

echo $input_var / 2 = $((input_var/2))

