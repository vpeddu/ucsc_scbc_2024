#!/bin/bash
# rreggiar@ucsc.edu
# 2022-07-10

script_path=$0
script_name=$(basename $0)
input_var=${1:-10}

echo The name of this script is: $script_name

echo $input_var%%2

