#!/bin/bash
args=("$@")
n=${args[0]}
for ((i=1; i<${#args[@]}; i++))
do
  if [[ $((n % args[i])) -ne 0 ]]
  then
    echo false
    exit
  fi
done
echo true

# Best Practices
n=$1; x=$2; y=$3
[[ $((n % x)) -eq 0 && $((n % y)) -eq 0 ]] && echo true || echo "false"