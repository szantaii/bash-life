#!/bin/bash

print_help1()
{
	local help_text="Start: s, Quit: q"
	
	cursor_x=$((term_width - ${#help_text}))
	cursor_y=$((grid_height + 3))
	place_cursor
	
	printf "${help_text}" >> $buffer
}

print_help2()
{
	local help_text="Quit: q"
	
	cursor_x=$((term_width - ${#help_text}))
	cursor_y=$((grid_height + 3))
	place_cursor
	
	printf "${help_text}" >> $buffer
}

