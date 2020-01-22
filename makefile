README.md: guessinggame.sh
	printf "# Guessing game project for Coursera\n" > README.md
	printf "make was run at: " >> README.md
	date >> README.md
	printf "\nThe number of lines of code in guessinggame.sh is: " >> README.md	
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md	
