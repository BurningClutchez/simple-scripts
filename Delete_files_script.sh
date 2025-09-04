#!/bin/bash

echo "Searching for files with 'copy' in their name..."

find "$search_dir" -type f -iname "*copy*" -print0 | while IFS= read -r -d $'\0' file; do
    echo "Found file: $file"

    if [[ $file ]]; then
        rm "$file"
        echo "Deleted: $file"
    else
        echo "Skipped: $file"
    fi
done

echo "Script finished."