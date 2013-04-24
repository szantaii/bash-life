#!/bin/bash

init_grid()
{
	local k=$((cursor_x - grid_xmin))
	local l=$((cursor_y - grid_ymin))
	
	if (( ${grid["${k},${l}"]} == 0 ))
	then
		grid["${k},${l}"]=1
		printf "o" >> ${buffer}
	else
		grid["${k},${l}"]=0
		printf " " >> ${buffer}
	fi
	
	place_cursor
}

