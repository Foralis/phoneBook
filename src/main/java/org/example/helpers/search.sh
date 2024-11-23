#!/bin/bash
fileName=$1

echo "Введите фамилию и имя:"
read searchText

awk -v pat="$searchText" -F "|" '$1 ~ pat {print $0}' $fileName