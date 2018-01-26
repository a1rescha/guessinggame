#!/usr/bin/env bash

totalFileCount=`ls | wc -l`

function guessIt {
	echo "How many files are in the current directory?"
	read response
	
	if [[ $response -eq $totalFileCount  ]]
	then
	    echo "You are right! Brilliant!"
	    exit
	elif [[ $response -gt $totalFileCount ]]
	then    
	    echo 'Your guess is too high. Try it again.'
	    guessIt
	elif [[ $response -lt $totalFileCount ]]
	then
	    echo 'Your guess is too low. Try it again.'
	    guessIt
	fi
}
guessIt
