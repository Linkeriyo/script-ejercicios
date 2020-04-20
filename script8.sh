#!/bin/bash

if [[ "$1" =~ . ]]; then

    if [[ "$1" =~ [A-Za-z] ]]; then
        
        echo "Es una letra."

    elif [[ "$1" =~ [0-9] ]]; then

        echo "Es un número."

    else

        echo "Es un carácter especial."

    fi

else

    echo "Introduce solo un carácter."

fi