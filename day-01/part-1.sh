#!/bin/bash
# TR3N
#

frequency=0

for value in $(cat input)
  do
  frequency=$(( frequency + value ))
  echo $frequency
  done
