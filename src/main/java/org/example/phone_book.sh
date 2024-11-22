#!/bin/bash

fileName="tmp.txt"
if [ "$#" -lt 1 ]; then
  echo> $fileName
else
  echo> $1
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
      ;;
    edit)
      echo "Выбрали редактирование записи."
      ;;
    list_all)
      echo "Выбрали вывод списка всех записей."
      ;;
    search_by_name)
      echo "Выбрали поиск записи."
      ;;
    esac
done