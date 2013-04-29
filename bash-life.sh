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

printf "bash-life\nCopyright (C) Istvan Szantai \
\x3c\x73\x7a\x61\x6e\x74\x61\x69\x69\x40\x73\x69\
\x64\x65\x6e\x6f\x74\x65\x2e\x68\x75\x3e 2013\n"

# Save terminal screen
tput smcup

IFS=""

dirname=$(dirname "$0")

window_title="bash-life"

min_term_width=18
min_term_height=6

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

source "${dirname}/check-prerequisites.sh"
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

check_prerequisites

main_loop

