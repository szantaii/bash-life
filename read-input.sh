#!/bin/bash

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

