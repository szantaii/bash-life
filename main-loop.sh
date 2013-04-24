#!/bin/bash

main_loop()
{
	init
	
	print_title
	print_frame
	print_help1
	
	cursor_x=${grid_xmin}
	cursor_y=${grid_ymin}
	place_cursor
	refresh_screen
	
	while true
	do
		read_input
		refresh_screen
		sleep 0.0166
	done
}

