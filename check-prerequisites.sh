#!/bin/bash

check_prerequisites()
{
	# Check if 'tput' command is available
	which tput > /dev/null
	
	# If 'tput' is not available, then print
	# error message and exit with status code '1'
	if (($? != 0))
	then
		# Restore terminal screen
		tput rmcup
		
		printf "Your system is missing the program 'tput' which is necessary \
for bash-life\nto run. 'tput' can be found in the following packages on \
the following distributions:\n    Distribution        Package name\n\
    ---------------------------------\n    Arch Linux          ncurses\n    \
Debian              ncurses-bin\n    Fedora              ncurses\n    \
openSUSE            ncurses-utils\n    Ubuntu              ncurses-bin\n"
		
		exit 1
	fi
	
	# Check if terminal has at least $min_term_width columns and
	# $min_term_height lines
	#
	# If either terminal width or height is less than
	# $min_term_width and $min_term_height print error message
	# and exit with status code '2'
	if ((term_width < min_term_width || term_height < min_term_height))
	then
		# Restore terminal screen
		tput rmcup
		
		printf "bash-life needs a terminal with size of at least \
${min_term_width}x${min_term_height} (${min_term_width} columns, \
${min_term_height} lines).\n"
		
		exit 2
	fi
}
