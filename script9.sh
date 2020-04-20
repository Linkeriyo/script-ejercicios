#!/bin/bash

args=("$@")

for i in "${args[@]}"; do

    if [[ -e $i ]]; then

        if [[ -d $i ]]; then
            echo "${i} es un directorio."
        else
            echo "${i} es un fichero."
        fi

    else
        echo "${i} no existe"
    fi
done