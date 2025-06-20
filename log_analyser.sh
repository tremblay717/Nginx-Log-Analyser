#!/bin/bash

# Most requested IP
echo "Top 5 IP addresses with the most requests:"
cat ./nginx-access.log | awk '{print $1}' | sort | uniq -c | sort -r | head -n5 | awk '{printf "%s - %s requests\n", $2, $1}'
