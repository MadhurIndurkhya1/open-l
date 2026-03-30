#!/bin/bash
# Author: Madhur Indurkhya (24BAI10547)

echo "================================================================================"
echo "                   Apache AUDIT - MANIFESTO GENERATOR                 "
echo "================================================================================"
read -p "What is your name? " NAME
read -p "What is your favorite open-source project? " PROJECT
read -p "What do you think is the most important aspect of open-source software? " ASPECT

echo "My name is $NAME, and I believe in the power of open-source software. My favorite project is $PROJECT, and I think the most important aspect of open-source is $ASPECT." > $NAME.txt

echo "Manifesto saved to $NAME.txt"

echo "================================================================================"