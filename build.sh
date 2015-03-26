#!/bin/sh

for FILE_NAME in *; do
    if [ -d "${FILE_NAME}" ]; then
        docker build -t eher/$FILE_NAME $FILE_NAME
    fi
done
