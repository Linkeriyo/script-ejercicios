#!/bin/bash

if [[ -d $1 ]]; then

    dirs=`ls -da ${1} | wc -l`
    files=`ls -a ${1} | wc -l`

    files=$((files - dirs))

    echo $dirs directorios
    echo $files ficheros

else
    echo "Introduce una ruta de un directorio."
fi