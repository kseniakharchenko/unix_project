#!/usr/bin/env bash
# File: guessinggame.sh

correct_number=$(ls | wc -l)
echo "Hello, please guess the number of files in the current directory:"
read response


guessing response correct_number
