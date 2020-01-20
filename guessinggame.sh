#!/usr/bin/env bash
# File: guessinggame.sh

echo "Please guess how many files are in the current directory."
read guess

function filetotal {

	ls $1 | wc -l

}

totalfiles=$(filetotal)

while [[ $guess -ne $totalfiles ]]
do

	if [[ $guess -gt $totalfiles ]]
	then
		echo "Sorry! Your guess was too high. Please try again."
	elif [[ $guess -lt $totalfiles ]]
	then
		echo "Sorry! Your guess was too low. Please try again."
	fi
	read guess
done

if [[ $guess -eq $totalfiles ]]
then
        echo "Congratulations! You're right!"
fi
