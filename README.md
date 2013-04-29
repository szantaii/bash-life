# bash-life

***

## Contents
 1. About
 2. License
 3. Prerequisites
 4. Exit status
 5. How to use
  * Get bash-life
  * Start bash-life
  * Setup and start simulation
 6. Further development

***

## 1. About

A [Game of Life](http://en.wikipedia.org/wiki/Conway%27s_Game_of_Life) simulator written in Bash.

> The Game of Life is a cellular automaton devised by the British mathematician John Horton Conway in 1970.
> 
> The universe of the Game of Life is an infinite two-dimensional orthogonal grid of square cells, each of which is in one of two possible states, _alive_ or _dead_. Every cell interacts with its eight neighbours, which are the cells that are horizontally, vertically, or diagonally adjacent. At each step in time, the following transitions occur:
> 
> 1. Any live cell with fewer than two live neighbours dies, as if caused by under-population.
> 2. Any live cell with two or three live neighbours lives on to the next generation.
> 3. Any live cell with more than three live neighbours dies, as if by overcrowding.
> 4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.
> 
> The initial pattern constitutes the _seed_ of the system. The first generation is created by applying the above rules simultaneously to every cell in the seed—births and deaths occur simultaneously, and the discrete moment at which this happens is sometimes called a _tick_ (in other words, each generation is a pure function of the preceding one). The rules continue to be applied repeatedly to create further generations.

Source: [Conway's Game of Life - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Conway's_Game_of_Life)

## 2. License

This project is licensed under GNU General Public License Version 3+. For the full license, see `LICENSE`.

## 3. Prerequisites

 * Bash shell ≥ 4.2
 * `tput` for terminal handling. Can be found in different `ncurses` packages on Linux distributions (see the table below for major distros).

| Distrbution | Package name    |
| ----------- | --------------- |
| Arch Linux  | `ncurses`       |
| Debian      | `ncurses-bin`   |
| Fedora      | `ncurses`       |
| openSUSE    | `ncurses-utils` |
| Ubuntu      | `ncurses-bin`   |

## 4. Exit status

 * `0` bash-life exited successfully.
 * `1` Missing necessary program (`tput`) to run bash-life.
 * `2` Too small terminal size (18×6).

## 5. How to use

### Get bash-life

First you have to acquire bash-life:

```bash
git clone https://github.com/szantaii/bash-life.git
```

Enter bash-life's directory:

```bash
cd bash-life
```

### Start bash-life

Use the Bash interpreter to start the game:

```bash
bash bash-life.sh
```

### Setup and start simulation

```text
                                   bash-life                                    
+------------------------------------------------------------------------------+
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                        o                                                     |
|                         o                                                    |
|                       ooo                                                    |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
+------------------------------------------------------------------------------+
Navigate: arrow keys, Toggle cell: spacebar                    Start: s, Quit: q
```

`TODO`

## 6. Further development

 * Add code comments. (high priority)
 * Fill section '5. How to use' in README. (normal priority)

