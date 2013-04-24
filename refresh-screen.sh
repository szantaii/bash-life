#!/bin/bash

refresh_screen()
{
	cat "${buffer}"
	printf "" > ${buffer}
}

