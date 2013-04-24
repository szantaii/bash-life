#!/bin/bash

evolve()
{
	while true
	do
		clear_help
		print_help2
		
		cursor_x=0
		cursor_y=${term_height}
		place_cursor
		refresh_screen
		
		next_generation
		print_grid
		refresh_screen
		
		read -sn1 -t 0.0001 input
		if [[ "${input}" == "q" ]]
		then
			quit
		fi
	done
}
