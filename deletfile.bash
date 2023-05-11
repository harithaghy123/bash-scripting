#!/bin/bash
file="/haritha/scripts/file"  # Replace with the path of the file you want to modify
# Check if the file exists
if [ -f "$file" ]; then
    # Count the total number of lines in the file
    total_lines=$(wc -l < "$file")
    # Calculate the number of lines to delete (last three lines)
    lines_to_delete=3
    # Calculate the starting line number to delete from
    start_line=$((total_lines - lines_to_delete + 1))
    # Delete the last three lines from the file
    sed -i "${start_line},\$d" "$file"
    echo "Last three lines deleted from file: $file"
else
    echo "File not found: $file"
fi
