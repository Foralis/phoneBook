#!/bin/bash

echo "Добавления новой записи в телефонную книгу $1"

read -p "Введите фамилию:" surname
read -p "Введите имя:" name
read -p "Введите телефон:" phoneNumber
read -p "Введите заметку:" description

echo "$surname $name|$phoneNumber|$description" >> $1