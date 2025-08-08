#!/bin/sh

if ! ls *.csv >/dev/null 2>&1; then
    exit 1
fi

first_file=$(ls *.csv | head -n 1)
head -n 1 "$first_file" > hh_concatenated.csv

for file in *.csv; do
    tail -n +2 "$file"
done | sort -t',' -k2,2 -k1,1 >> hh_concatenated.csv