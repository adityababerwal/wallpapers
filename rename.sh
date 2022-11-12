#!/bin/sh

i=1

# edu stuff: number formatting in sh using printf
# 03d => d means decimal number (integers); 3 means the "length" should be 3
# 0 means fill the remaining length with 0's

for file in *; do
	ext=${file##*.} ## greedy matching from beggining, * matches everything untill the last next '.'
  [ $ext = sh ] && continue
  [ $file = phone ] && continue

	mv -n "$file" "$(printf "%03d" $i).$ext" > /dev/null
  i=$((i+1));
done
