#!/bin/sh

awk -F',' '
BEGIN {OFS=","}
NR==1 {print $0; next}
{
  name = $3

  new_name = ""
  if (name ~ /Junior/) new_name = (new_name == "" ? "Junior" : new_name "/Junior")
  if (name ~ /Middle/) new_name = (new_name == "" ? "Middle" : new_name "/Middle")
  if (name ~ /Senior/) new_name = (new_name == "" ? "Senior" : new_name "/Senior")

  if (new_name == "") new_name = "-"

  $3 = "\"" new_name "\""

  print $0
}
' ../ex02/hh_sorted.csv > hh_positions.csv
