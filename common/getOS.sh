#!/bin/sh
command_exists() {
    command -v "$@" > /dev/null 2>&1
}

# Any android system will have the getprop command
get_os_type() {
    command_exists getprop
    status=$?
    if [ $status -eq 0 ]; then
        OS="android"
    else
        OS="standard"
    fi
}

get_os_type
