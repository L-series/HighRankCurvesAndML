#!/bin/bash

# Iterate over folder numbers
for folder_num in {0}; do

  # Start counter at 0 and initialize vector size
  counter=0
  size=()

  # Iterate over files in folder
  for file in /run/media/eva/BACKUP/primefiles/pf/prime*; do
    # Get number of lines in file
    lines=$(wc -l < "$file")

    # Add number of lines to vector size at position xx
    size[$counter]=$lines

    # Increment counter
    counter=$((counter + 1))
  done

  # Save vector size to file
  echo "${size[@]}" > "sizes${folder_num}.txt"
  
done
