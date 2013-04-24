#!/bin/bash

print_frame()
{
	cursor_x=0
	cursor_y=1
	place_cursor
	printf "+" >> ${buffer}
	
	cursor_y=1
	for ((cursor_x=1; cursor_x <= grid_width; cursor_x++))
	do
		place_cursor
		printf "-" >> ${buffer}
	done
	
	cursor_x=$((grid_width + 1))
	cursor_y=1
	place_cursor
	printf "+" >> ${buffer}
	
	cursor_x=$((grid_width + 1))
	for ((cursor_y=2; cursor_y <= (grid_height + 1); cursor_y++))
	do
		place_cursor
		printf "|" >> ${buffer}
	done
	
	cursor_x=0
	cursor_y=$((grid_height + 2))
	place_cursor
	printf "+" >> ${buffer}
	
	cursor_y=$((grid_height + 2))
	for ((cursor_x=1; cursor_x <= grid_width; cursor_x++))
	do
		place_cursor
		printf "-" >> ${buffer}
	done
	
	cursor_x=$((grid_width + 1))
	cursor_y=${frame_height}
	place_cursor
	printf "+" >> ${buffer}
	
	cursor_x=0
	for ((cursor_y=2; cursor_y <= (grid_height + 1); cursor_y++))
	do
		place_cursor
		printf "|" >> ${buffer}
	done
}

