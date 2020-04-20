#!/bin/bash

echo -n "¿Estás seguro de que quieres eliminar el archivo? [s/n]"
read seguro

if [ seguro = "s" ]; then
    rm $1
fi