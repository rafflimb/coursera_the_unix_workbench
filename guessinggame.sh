#!/usr/bin/env bash
filenum=$(ls | wc -l)

function guess_filenumber {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "Amazing!!! You finally guessed it!"
		echo "Hooooooray"
		echo "  So we have ..."
		for f in $(ls)
		do
			echo "  - $f and "
		done
		echo "    ... and that was it."
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "There are less files... try again :"
			guess_filenumber
		else
			echo "There are more files... try again :"
			guess_filenumber
		fi
	fi
}
echo "This is the guessing game."
echo "Guess how many files are in the current directory and press Enter :"
guess_filenumber
