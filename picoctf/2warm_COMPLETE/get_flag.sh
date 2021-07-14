#!/usr/bin/zsh
# num=42 (base 10)
# convert num to binary (base 2)
echo "picoCTF{$(bc <<< 'obase=2;42')}"
