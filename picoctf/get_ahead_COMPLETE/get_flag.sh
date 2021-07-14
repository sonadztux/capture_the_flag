#!/usr/bin/zsh
curl -s -X HEAD -i http://mercury.picoctf.net:47967/ | grep flag | cut -d : -f2 | cut -d " " -f2
