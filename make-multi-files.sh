#!/bin/bash

# Directions
# When using this script navigate to the desired location using WSL Terminal, update this file with the names of the files you would like to create under the files_list variable.
# Using the terminal, type "bash " then the path to this script relative to your home directory.
# If this is unknown, locate the directory holding this script, then use the "pwd" command.
# The command I would use is "bash /home/$user/github/make-multi-files.sh"

# listed files to be created in array, separated by spaces and quotations
# strings listed will be created
files_list=(
    "test-file1" 
    "test-file2" 
    "test-file3" 
    "test-file4" 
    "test-file5" 
    "test-file6" 
    "test-file7" 
    "test-file8" 
    "test-file9" 
    "test-file10 - Copy" 
    "test-file11" 
    "test-file12" 
    "test-file13" 
    "test-file14" 
    "test-file15" 
    "test-file16" 
    "test-file17" 
    "test-file18" 
    "test-file19" 
    "test-file20-Copy" 
    "test-file21" 
    "test-file22" 
    "test-file23" 
    "test-filCopye24" 
    "test-file25" 
    "test-file26" 
    "test-file27" 
    "test-file28" 
    "test-filed"
    )


# loop identifying strings within variable
for i in ${files_list[@]}; do
# accessing strings and creating files
    touch $i
    done
# confirmation script has completed
echo "done"


# Sources:
# https://linuxhint.com/bash_loop_list_strings/
#
# https://stackoverflow.com/questions/52901012/what-is-a-list-in-bash
# 
# https://www.cyberciti.biz/faq/bash-for-loop/