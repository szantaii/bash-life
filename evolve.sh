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
