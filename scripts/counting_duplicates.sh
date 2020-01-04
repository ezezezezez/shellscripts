#!/bin/bash
arr=$(echo "$1" | tr '[:upper:]' '[:lower:]' | fold -w1)
res=0
declare -A asoc_arr
for var in "${arr[@]}"
do
  asoc_arr[$var]=$((asoc_arr[$var]+1))
done
for var in "${asoc_arr[@]}"
do
  if [[ $var -gt 1 ]]; then
    res=$((res+1))
  fi
done
echo $res;
# oneline:
# echo "$1" | grep -o . | sort -f | uniq -id | wc -l