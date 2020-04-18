#!/bin/bash

content=`cat archivo`
echo $content

if [ "$content" = *$1* ]; then
    echo si
fi