#!/usr/bin/zsh
cat pw.txt | python ende.py -d flag.txt.en | cut -d : -f2
