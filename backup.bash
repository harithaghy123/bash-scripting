#!/bin/bash
backup_dir="/path/to/directory"
backup_file="/path/to/backup/file.tar.gz"
tar -czvf "$backup_file" "$backup_dir"
