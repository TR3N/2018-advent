#!/bin/bash
# TR3N
#

frequency=0
xfrequency=0
file=input
catch=false
count=0

main () {
for value in $(cat $file)
  do
  frequency=$(( frequency + value ))
  for x in $(echo $xfrequency)
    do
    if [ "$frequency" == "$x" ]; then
      echo "$frequency - $x"
      exit
    fi
    done
    xfrequency=$(echo "$xfrequency $frequency")
    count=$((count+1))
    echo $count
  done
}
while [ $catch == "false" ];
  do
  main
  echo "-----------------"
  done


