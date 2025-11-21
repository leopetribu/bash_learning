#!/bin/bash

echo "Hello! What's your name?"

read name

echo "Hi, $name! Insert the math operation you want me to calculate:"

read operation


if [ $((operation)) -gt 0 ]; then
	signal='positive'
elif [ $((operation)) -lt 0 ]; then
	signal='negative'
else
	signal='zero'
fi


echo "Right on! The result is $((operation)) and the number is $signal. Am I right?"

read usr_confirm


if [ $usr_confirm == 'yes' ]; then
	echo "Yay!"
elif [ $usr_confirm == 'no' ]; then
	echo "I'm sorry! :("
else
	echo "I don't get it! Could you please retype it? Just put 'yes' or 'no'."
fi
