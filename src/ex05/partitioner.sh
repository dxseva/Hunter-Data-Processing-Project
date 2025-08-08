#!/bin/sh

head -n 1 ../ex03/hh_positions.csv > headers.csv

awk -F',' 'NR>1 {
    split($2, date_array, "T");
    date = date_array[1];
    
    filename = date ".csv";
    
    if (!(filename in seen)) {
        system("cat headers.csv > \"" filename "\"");
        seen[filename] = 1;
    }
    
    print $0 >> filename;
}' ../ex03/hh_positions.csv 

rm headers.csv