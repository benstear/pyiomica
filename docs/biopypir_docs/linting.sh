#!/bin/bash

pylint pyiomica  --exit-zero --reports=y  | \
awk '$0 ~ /Your code/ || $0 ~ /Global/ {print}' | cut -d'/' -f1 | rev | cut -d' ' -f1 | rev > pylint-report.txt      
