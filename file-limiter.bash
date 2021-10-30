#!/bin/bash

# --- Config

dest=./dest
fileext=txt
limit=20

# --- Code

count="$(ls -1q $dest/*.$fileext | wc -l)"
if [[ $count -gt $limit ]]
then
    oldest=$(ls -t $dest/*.$fileext | tail -1)
    rm $oldest
fi
