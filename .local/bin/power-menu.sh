#!/bin/sh

LOCK=""
SLEEP=""
LOGOUT=""
RESTART=""
SHUTDOWN=""

list_icons() {
    echo $LOCK
    echo $SLEEP
    echo $LOGOUT
    echo $RESTART
    echo $SHUTDOWN
}

handle_option() {
    case "$1" in
        "$LOCK")
          swaylock -c 000000 --layout-bg-color 000000 --indicator-thickness 6 --layout-border-color 000000 --layout-text-color C77750 --line-color C77750 --ring-wrong-color f53c3c --ring-color 2B2724 --inside-wrong-color f53c3c --inside-ver-color 000000 --inside-clear-color 000000 --inside-color 000000     
            ;;
        "$SLEEP")
          systemctl suspend
            ;;
        "$LOGOUT")
          swaymsg exit
            ;;
        "$RESTART")
          reboot
            ;;
        "$SHUTDOWN")
          shutdown now
            ;;
    esac
}

SELECTION="$(list_icons | rofi -dmenu -theme options_menu)"
handle_option $SELECTION &
