#!/bin/bash

if [[ -e $1 ]]; then
    echo "${1} existe."

    if [[ -r $1 ]] && [[ -w $1 ]]; then
        echo "${1} es un archivo de lectura/escritura."
        chmod u+x $1
        echo "Se ha convertido el archivo en ejecutable."
    fi
fi