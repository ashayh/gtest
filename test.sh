#!/bin/bash

set -u

COUNT=0

while true
do
  echo $COUNT
  echo $COUNT | logger -t $0
  sleep 1
  ((COUNT++))
  if [[ ${COUNT} -gt 300 ]] ; then
    exit
  fi
done
