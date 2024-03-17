#!/bin/bash

# Directions
# When using this script navigate to the desired location using WSL Terminal, update this file with the names of the directories you would like to create under the dir_list variable.
# Using the terminal, type "bash " then the path to this script relative to your home directory.
# If this is unknown, locate the directory holding this script, then use the "pwd" command.
# The command I would use is "bash /home/$user/github/make-multi-dirs.sh"

# listed files to be created in array, separated by spaces in quotations
# strings listed will be created
dir_list=(
"1st-Floor"
"2nd-Floor"
"3rd-Floor"
"4th-Floor"
"5th-Floor"
"6th-Floor"
"7th-Floor"
"8th-Floor"
"9th-Floor"
"10th-Floor"
"11th-Floor"
"12th-Floor"
"13th-Floor"
"14th-Floor"
"15th-Floor"
)


# loop identifying strings within variable
for i in ${dir_list[@]}; do
# accessing strings and creating files
    mkdir $i
    done
# confirmation script has completed
echo "done"


# Sources:
# https://linuxhint.com/bash_loop_list_strings/
#
# https://stackoverflow.com/questions/52901012/what-is-a-list-in-bash
# 
# https://www.cyberciti.biz/faq/bash-for-loop/
