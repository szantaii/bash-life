#!/bin/bash

print_title()
{
	cursor_x=$(($((term_width - ${#window_title})) / 2))
	cursor_y=0
	place_cursor
	
	printf "${window_title}" >> $buffer
}

