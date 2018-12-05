#!/usr/local/Cellar/bash/4.4.23/bin/bash
# TR3N

file=$(<input)
freq=0
declare -A JAWN
JAWN[$freq]=0

while true; do
  while read -r x; do
    freq=$(($freq+$x))

    if [[ ${JAWN[$freq]} ]]; then
      echo "Got it : $freq"
      echo -e "\a"
      break 2
    fi

    JAWN[$freq]="$x"
  done <<< "$file"
done
