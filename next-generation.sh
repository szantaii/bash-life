#!/bin/bash

next_generation()
{
	local i1
	local i2
	local i3
	local i4
	local j1
	local j2
	local j3
	local j4
	local key
	
	for key in "${!temp_grid[@]}"
	do
		i1=${key%","*}
		j1=${key#*","}
		
		i2=$(($(($(($((i1 - 1)) % grid_width)) + grid_width)) % grid_width))
		i3=${i1}
		i4=$(($((i1 + 1)) % grid_width))
		j2=$(($(($(($((j1 - 1)) % grid_height)) + grid_height)) % grid_height))
		j3=${j1}
		j4=$(($((j1 + 1)) % grid_height))
		
		neighbor_count=$((${grid["${i2},${j2}"]} + ${grid["${i3},${j2}"]} +
			${grid["${i4},${j2}"]} + ${grid["${i2},${j3}"]} +
			${grid["${i4},${j3}"]} + ${grid["${i2},${j4}"]} +
			${grid["${i3},${j4}"]} + ${grid["${i4},${j4}"]}))
		
		case "${grid["${i1},${j1}"]}${neighbor_count}" in
			12|*3)
				temp_grid["${i1},${j1}"]=1
				;;
			*)
				temp_grid["${i1},${j1}"]=0
				;;
		esac
	done
	
	for key in "${!temp_grid[@]}"
	do
		grid["${key}"]="${temp_grid["${key}"]}"
	done
}

