#!/bin/bash
var=2
counter=0
if test "$#" -lt 4
then
    echo "usage $0 <shellscriptlab3> <dir> <file> n1 n2 n3"
    exit 1
fi

shift 2

count=0
for arg in "$@"
do
if((arg>10))
then
((count++))
fi
done 
echo $count
sum=0
for arg in "$@"
do
((sum=sum+arg))
done
echo $sum

echo -n $sum | wc -m

#cheching if the file is a regular one
if((-f $file))
then 
    date=$(date +%d-%m-%y)
    echo "$count $sum $date" >> "$file"
else
    echo "$file is not a regular one"
fi
