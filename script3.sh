#!/bin/bash

user=`whoami`

if [ "$user" = "blas" ]; then
    for i in `seq 1 5`;
        do
        echo blas
        done
else
    echo "Usted es ${user} tenga un buen día."
fi