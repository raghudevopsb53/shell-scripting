#!/bin/bash

## For loop

for i in frontend catalogue mongo
do
  echo COMPONENT = $i
  sleep 1
done

i=10

while [ $i -gt 0 ]; do
  echo $i
  i=$(($i-1))
done