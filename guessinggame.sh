#!/usr/bin/env bash
# File: guessinggame.sh

correct_number=$(ls | wc -l)
echo "Hello, please guess the number of files in the current directory:"
read response

function guessing {
	while [[ $response -ne $correct_number ]]
	do
		if [[ $response -lt $correct_number ]]
		then
			echo "$response is less than needed. Please enter a number again:"
			read response
		elif [[ $response -gt $correct_number ]]
		then
			echo "$response is more than needed. Please enter a number again:"
			read response
		fi
	done
	echo "You are right!"
}

guessing response correct_number
