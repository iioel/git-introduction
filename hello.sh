#!/bin/sh

if [ "$1" = "--command" ]; then
 	read -p "Are you shure do you want to run hello.rb ? (yes/no) " ANSWER
	if [ $ANSWER = "yes" ]
	then ruby hello.rb
	fi
elif [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
	echo "Use --command to run the programm without graphical interface"
elif [ "$1" = "" ]; then
	HELLO=$(zenity --question --text="Are you shure do you want to run hello.rb ?") # Ask if you realy want to run this script | Demande une confirmation si vous voulez vraiment éxecuter le script 
	if [ "$HELLO" = 0 ]
	then ruby hello.rb # Run rubis's script | Lance le script ruby
	fi
fi
