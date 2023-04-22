#!/bin/bash

A=${1}
echo "A és ${A}"
B=${2}
echo "B és ${B}"
DIVISIO=$((A/B))
echo " scale=2; ${A}/${B}" | bc
