#!/bin/bash
options="hello quit"
select opt in $options; do
    if [ "$opt" = "quit" ]; then
     echo done
     exit
    elif [ "$opt" = "hello" ]; then
     echo hello world
    else
     clear
     echo bad option
    fi
done
