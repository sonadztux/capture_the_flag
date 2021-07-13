#!/usr/bin/zsh
chmod +x warm
./warm -h | cut -d : -f2 | cut -d " " -f2
