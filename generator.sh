#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Usage: ${0%.*} <amount of files> <size of the file>"
    exit 1  
fi
no_of_files=$1;
counter=1;
mkdir generated_data
while [[ $counter -le $no_of_files ]];
    do echo Creating file no $counter;
        fallocate -l $2M generated_data/file$counter.txt;
        let "counter += 1";
    done