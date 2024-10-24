#!/bin/bash

# Simple Interest Calculator

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <Principal> <Rate> <Time>"
  exit 1
fi

principal=$1
rate=$2
time=$3

# Formula to calculate Simple Interest
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "The simple interest is: $interest"
