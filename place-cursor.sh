#!/bin/bash

place_cursor()
{
	tput cup ${cursor_y} ${cursor_x} >> ${buffer}
}

