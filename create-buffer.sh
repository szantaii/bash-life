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

create_buffer()
{
	local buffer_name="bashlife-buffer"
	local buffer_directory=""
	
	# Try to use /dev/shm if available
	# else use /tmp as the location of
	# the screen buffer file
	if [ -d "/dev/shm" ]
	then
		buffer_directory="/dev/shm"
	else
		buffer_directory="/tmp"
	fi
	
	# Try to use mktemp before using the unsafe method
	if [ -x $(which mktemp) ]
	then
		buffer=$(mktemp --tmpdir=${buffer_directory} ${buffer_name}-XXXXXXXXXX)
	else
		buffer="${buffer_directory}/${buffer_name}-${RANDOM}"
		printf "" > ${buffer}
	fi
}

