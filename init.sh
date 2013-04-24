#!/bin/bash

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

