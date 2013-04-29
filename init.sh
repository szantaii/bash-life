#!/bin/bash

# bash-life is a Game of Life simulator written in Bash.
# Copyright (C) 2013 Istvan Szantai <szantaii at sidenote dot hu>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program (LICENSE).
# If not, see <http://www.gnu.org/licenses/>.

init()
{
	create_buffer
	clear >> ${buffer}
	printf "Initializing bash-life..." >> ${buffer}
	refresh_screen
	
	# Capture Ctrl+C key combination to call the 'quit'
	# function when Ctrl+C key combination is pressed
	trap quit SIGINT
	
	# Set $frame_width
	if (( $((term_width % 2)) ==  0 ))
	then
		frame_width=$term_width
	else
		frame_width=$((term_width - 1))
	fi
	
	# Set $frame_height
	if (( $((term_height % 2)) ==  0 ))
	then
		frame_height=$((term_height - 2))
	else
		frame_height=$((term_height - 3))
	fi
	
	grid_width=$((frame_width - 2))
	grid_height=$((frame_height - 2))
	
	grid_xmax=$((grid_width + grid_xmin - 1))
	grid_ymax=$((grid_height + grid_ymin - 1))
	
	for ((i=0; i < grid_xmax; i++))
	do
		for ((j=0; j < grid_ymax; j++))
		do
			grid["${i},${j}"]="0"
			temp_grid["${i},${j}"]="0"
		done
	done
	
	clear >> ${buffer}
	refresh_screen
}

