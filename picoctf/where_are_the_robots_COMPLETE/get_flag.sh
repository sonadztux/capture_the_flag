#!/usr/bin/zsh
resp1=$(curl -s http://jupiter.challenges.picoctf.org:36474/robots.txt | grep html | cut -d : -f2 | cut -d ' ' -f2)
curl -s http://jupiter.challenges.picoctf.org:36474/$resp1 | grep flag | awk -F '<flag>' '{print $2}' | awk -F '</flag>' '{print $1}'
