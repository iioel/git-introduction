#!/bin/sh

HELLO=$(zenity --question --text="Are you shure do you want to run hello.rb ?") 

if [ $HELLO=0 ]
then ruby hello.rb # Run rubis's script
fi
