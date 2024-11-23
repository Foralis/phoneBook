#!/bin/bash

fileName="tmp.txt"

if [ "$#" -lt 1 ]; then
  echo> $fileName
  fileName="book.txt"
else
  #echo> $1
  fileName=$1
fi

PS3="Телефонная книга. Выберите действие:"

select item in add delete edit list_all search_by_name; do
    case $item in
    add)
      echo "Выбрали добавление новой записи."
      . ./helpers/add.sh $fileName
      ;;
    delete)
      echo "Выбрали удаление записи."
      . ./helpers/delete.sh $fileName
      ;;
    edit)
      echo "Выбрали редактирование записи."
      ;;
    list_all)
      echo "Выбрали вывод списка всех записей."
      cat $fileName
      ;;
    search_by_name)
      echo "Выбрали поиск записи."
      . ./helpers/search.sh $fileName
      ;;
    esac
done