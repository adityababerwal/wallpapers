#!/bin/zsh

i=1

# edu stuff: number formatting in bash using printf
# 03d => d means decimal number (integers); 3 means the "length" should be 3
# 0 means fill the remaining length with 0's

# $NF in awk refers to Number of Fields, so basically get the last field
for file in *; do \

	if [ $(echo $file) = rename.sh ]; then
		continue
	fi
	ext=$(echo $file | awk -F. '{print $NF}')
	mv $file $(printf -v a "%03d" $i; echo $a).$ext && i=$((i+1)); \
done
