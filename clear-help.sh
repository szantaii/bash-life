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

# Clears the whole help text from the line under the grid
clear_help()
{
	# Place cursor directly under the bottom frame
	cursor_x=0
	cursor_y=$((grid_height + 3))
	place_cursor
	
	# Print space characters to the whole line
	for ((i=0; i < term_width; i++))
	do
		printf " " >> ${buffer}
	done
}

