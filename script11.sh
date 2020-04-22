#!/bin/bash

dirs=`ls -dq | wc -l`
files=`ls -q | wc -l`

files=$((files - dirs))

echo $dirs directorios
echo $files ficheros