#!/bin/sh

if [ -z "$1" ]; then
    exit 1
fi

vacancy=$1

query=$(echo "$vacancy" | sed 's/ /+/g')
url="https://api.hh.ru/vacancies?text=$query&per_page=20"

curl -s "$url" > hh.json
