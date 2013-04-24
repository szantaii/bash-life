#!/bin/bash

clear_help()
{
	cursor_x=0
	cursor_y=$((grid_height + 3))
	place_cursor
	
	for ((i=0; i < term_width; i++))
	do
		printf " " >> ${buffer}
	done
}

