#!/bin/bash

# Most requested IP
echo "Top 5 IP addresses with the most requests:"
cat ./nginx-access.log | awk '{print $1}' | sort | uniq -c | sort -r | head -n5 | awk '{printf "%s - %s requests\n", $2, $1}'

# Most requested paths
echo -e "\nTop 5 most requested paths:"
awk '{print $7}' ./nginx-access.log | sort | uniq -c | sort -r | head -n5 | awk '{printf "%s - %s requests\n", $2, $1}'


echo -e "\nTop 5 response status codes:"
awk -F '"' '{print $3}'  nginx-access.log | awk '{print $1}' | sort | uniq -c | sort -r | head -n5 | awk '{printf "%s - %s requests\n", $2, $1}'l