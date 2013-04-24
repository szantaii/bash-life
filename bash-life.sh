#!/bin/bash

printf "bash-life\nCopyright (C) Istvan Szantai \
\x3c\x73\x7a\x61\x6e\x74\x61\x69\x69\x40\x73\x69\
\x64\x65\x6e\x6f\x74\x65\x2e\x68\x75\x3e 2013\n"

# Save terminal screen
tput smcup

IFS=""

dirname=$(dirname "$0")

window_title="bash-life"

term_width=$(tput cols)
term_height=$(tput lines)

frame_width=""
frame_height=""

grid_width=""
grid_height=""

grid_xmin=1
grid_ymin=2

cursor_x=""
cursor_y=""

input=""

neighbor_count=""

declare -A grid
declare -A temp_grid

source "${dirname}/create-buffer.sh"
source "${dirname}/refresh-screen.sh"
source "${dirname}/init.sh"
source "${dirname}/place-cursor.sh"
source "${dirname}/print-title.sh"
source "${dirname}/print-frame.sh"
source "${dirname}/print-help.sh"
source "${dirname}/main-loop.sh"
source "${dirname}/init-grid.sh"
source "${dirname}/next-generation.sh"
source "${dirname}/print-grid.sh"
source "${dirname}/clear-help.sh"
source "${dirname}/evolve.sh"
source "${dirname}/read-input.sh"
source "${dirname}/quit.sh"

main_loop

