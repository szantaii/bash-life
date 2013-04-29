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

read_input()
{
	read -sn1 input
	if [ "${input}" == " " ]
	then
		place_cursor
		init_grid
	elif [ "${input}" == "s" ]
	then
		evolve
	elif [ "${input}" == "q" ]
	then
		quit
	else
		test "${input}" == $(echo -en "\e") || continue
		read -sn1 input
		test "${input}" == "[" || continue
		read -sn1 input
		
		case "${input}" in
			A)
				cursor_y=$((cursor_y - 1))
				if ((cursor_y < grid_ymin))
				then
					cursor_y=${grid_ymax}
				fi
				place_cursor
				;;
			B)
				cursor_y=$((cursor_y + 1))
				if ((cursor_y > grid_ymax))
				then
					cursor_y=${grid_ymin}
				fi
				place_cursor
				;;
			C)
				cursor_x=$((cursor_x + 1))
				if ((cursor_x > grid_xmax))
				then
					cursor_x=${grid_xmin}
				fi
				place_cursor
				;;
			D)
				cursor_x=$((cursor_x - 1))
				if ((cursor_x < grid_xmin))
				then
					cursor_x=${grid_xmax}
				fi
				place_cursor
				;;
			*)
				continue
				;;
		esac
	fi
}

