README.md: guessinggame.sh
	echo "# Guessing game project for Coursera" > README.md
	echo "make was run at:" >> README.md
	date >> README.md
	echo "The number of lines of code in guessinggame.sh is:" >> README.md	
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md	
