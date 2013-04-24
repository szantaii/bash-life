#!/bin/bash

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

