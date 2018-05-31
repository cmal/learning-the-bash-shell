#!/bin/bash

for i in $(cut -f 1,3 -d: /etc/passwd) ; do
    array[${i#*:}]=${i%:*}
done

echo "${array[@]}"

echo "${array[*]}"

echo "--- show values ---"
for i in "${array[@]}"; do
    echo $i
done

echo "--- show keys ---"
for i in "${!array[@]}"; do
    echo $i;
done


echo "--- show array length ---"
echo "${#array[@]}"


echo "--- show each element length ---"
for i in "${!array[@]}"; do
    echo "${#array[$i]}"
done

echo "-- show values again ---"
for i in "${array[@]}"; do
    echo "${array[$i]}"
done
