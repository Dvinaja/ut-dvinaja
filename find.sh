#!/bin/bash

path="/var/log/"
w="David_vinaja"


cd "$path"

for file in messages*
do
#       echo "$file"

        grep -Ril "$w" "$file"

done
