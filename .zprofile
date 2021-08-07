#!/bin/zsh

PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/.local/bin; export PATH

# Show/Hide hidden files on open.
# (Off by default)
export FFF_HIDDEN=1

# Use LS_COLORS to color fff.
# (On by default if available)
# (Ignores FFF_COL1)
export FFF_LS_COLORS=1

# Directory color [0-9]
export FFF_COL1=1

# Status background color [0-9]
export FFF_COL2=1

# Selection color [0-9] (copied/moved files)
export FFF_COL3=1

# Cursor color [0-9]
export FFF_COL4=1

# Status foreground color [0-9]
export FFF_COL5=1

# File Opener
export FFF_OPENER="xdg-open"

# File Attributes Command
export FFF_STAT_CMD="stat"

# Enable or disable CD on exit.
# (On by default)
export FFF_CD_ON_EXIT=0

# CD on exit helper file
# Default: '${XDG_CACHE_HOME}/fff/fff.d'
#          If not using XDG, '${HOME}/.cache/fff/fff.d' is used.
#export FFF_CD_FILE=~/.fff_d

# Favourites (Bookmarks) (keys 1-9) (dir or file)
export FFF_FAV1=~/.local/bin/
export FFF_FAV2=~/Documents/
export FFF_FAV3=~/Pictures/
export FFF_FAV4=~/Music/
export FFF_FAV5=~/Downloads/
export FFF_FAV6=~/.zprofile
export FFF_FAV7=~/.zshrc
export FFF_FAV8=~/.config/sway/config
export FFF_FAV9=~/.config/waybar/config

# File format.
# Customize the item string.
# Format ('%f' is the current file): "str%fstr"
# Example (Add a tab before files): FFF_FILE_FORMAT="\t%f"
export FFF_FILE_FORMAT="%f"

# Mark format.
# Customize the marked item string.
# Format ('%f' is the current file): "str%fstr"
# Example (Add a ' >' before files): FFF_MARK_FORMAT="> %f"
export FFF_MARK_FORMAT=" %f*"

# Default programs:
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export QT_QPA_PLATFORMTHEME=gtk2
export MOZ_ENABLE_WAYLAND=1
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway
[ "$(tty)" = "/dev/tty1" ] && ! pidof -s wayland >/dev/null 2>&1 && exec sway >/dev/null 2>&1

