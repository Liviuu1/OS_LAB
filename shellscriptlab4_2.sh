#!/bin/bash

output_file=$1
dir=$2

find $dir -type l | wc -l
regular_files=$(find $dir -type f)

for file in $regular_files; do
	grep -q "test" $file
	[[ $? -eq 1 ]] && echo $file >>$output_file
done
