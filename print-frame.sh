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

