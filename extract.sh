#!/bin/bash
# This script will extract all of the "Bulletins Replaced by This Update" MS patches and output them to screen.
# i.e. the patches output to screen are patches that you do not need to install
# diff this list against your original patchlist to get the patches you need to install
# e.g. ./extract.sh > obsolete.txt
cat *.aspx | grep "<p>" | grep "MS" | cut -d">" -f3 | cut -d"<" -f1 | sort -u | grep - | grep -v "txt" | grep -v "Microsoft" | sort -u
