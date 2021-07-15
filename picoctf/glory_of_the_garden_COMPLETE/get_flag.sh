#!/usr/bin/zsh
strings garden.jpg | grep flag | cut -d '"' -f2

# it can use xxd
# or other hex editor as well
# xxd garden.jpg
