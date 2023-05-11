#!/bin/bash




tail -n 3 "/haritha/scripts/delete_file.txt" | wc -c | xargs -I {} truncate "/haritha/scripts/delete_file.txt" -s -{}
