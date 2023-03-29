#!/bin/bash

echo "Please insert a date in this format dd/mm/yy"
read input

if[[ $input =~ ^0?[1-9]|[12][0-9]|3[01]/1[12]/[0-9]{4}$ ]]then
day=$(echo $input | cut -d'/' --f1)
month=$(echo $input | cut -d'/' -f2)
year=$(echo $input | cut -d'/' -f3)

if [[ $day -ge 1 && $day -le 31 && $month -ge 1 && $month -le 12 && $year -ge 1000 && $year -le 9999 ]];
then
    echo "Valid date!"
else
    echo "Invalid date."
fi
    
    if
  echo "Invalid format. Please enter a date in the format dd/mm/yyyy."
fi