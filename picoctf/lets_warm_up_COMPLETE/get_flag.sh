#!/usr/bin/zsh
hex="0x70"
hexascii=$(xxd -r <<< "$hex")
echo "picoCTF{$hexascii}"
