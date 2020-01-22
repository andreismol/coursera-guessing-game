#!/usr/bin/env bash
# File: guessinggame.sh

function filetotal {

        ls -a | wc -l
}

totalfiles=$(filetotal)

echo "Please guess how many files are in the current directory."
read guess

while ! [[ $guess =~ ^[0-9]+$ ]]
        do
                echo "Sorry, that's not a positive integer. Please enter a whole, positive number."
		read guess	
	done

while [[ $guess -ne $totalfiles ]]
do
	while ! [[ $guess =~ ^[0-9]+$ ]]
        do
                echo "Sorry, that's not a positive integer. Please enter a whole, positive number."
                read guess
        done
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
