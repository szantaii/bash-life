#!/bin/bash

print_grid()
{
	for ((i=0; i < grid_height; i++))
	do
		cursor_x=${grid_xmin}
		cursor_y=$((grid_ymin + i))
		place_cursor
		
		for ((j=0; j < grid_width; j++))
		do
			case "${grid["${j},${i}"]}" in
				0)
					printf " " >> $buffer
					;;
				1)
					printf "o" >> $buffer
					;;
			esac
		done
	done
	
	cursor_x=0
	cursor_y=${term_height}
	place_cursor
}

