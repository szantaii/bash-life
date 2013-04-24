#!/bin/bash

quit()
{
	rm ${buffer}
	
	tput rmcup
	
	exit 0
}

