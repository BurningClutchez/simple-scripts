#!/bin/bash

# This script finds and deletes all files with "copy" in their name.
# It's a good practice to run this with caution.

# The directory to search in. You can change this to a specific path.
# For example: search_dir="/home/user/documents"
search_dir="."

# Find all files with "copy" in their name (case-insensitive)
# The '-i' option to grep makes the search case-insensitive.
# The 'find' command searches for files.
# The 'xargs' command is used to pass the list of files to 'rm'.
# The '-print0' and '-0' options are used to handle filenames with spaces or special characters correctly.

echo "Searching for files with 'copy' in their name..."

find "$search_dir" -type f -iname "*copy*" -print0 | while IFS= read -r -d $'\0' file; do
    echo "Found file: $file"
#    read -p "Are you sure you want to delete this file? (y/n) " REPLY
#    echo
    if [[ $file ]]; then
        rm "$file"
        echo "Deleted: $file"
    else
        echo "Skipped: $file"
    fi
done

echo "Script finished."