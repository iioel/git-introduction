#!/bin/sh

HELLO=$(zenity --question --text="Are you shure do you want to run hello.rb ?") # Ask if you realy want to run this script | Demande une confirmation si vous voulez vraiment éxecuter le script 

if [ $HELLO=0 ]
then ruby hello.rb # Run rubis's script | Lance le script ruby
fi
