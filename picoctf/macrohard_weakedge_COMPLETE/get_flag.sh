#!/usr/bin/zsh
mv *.pptm forensic_is_fun.pptm
binwalk -eq *.pptm
cat *.extracted/ppt/slideMasters/hidden | tr -d ' ' | base64 -d | cut -d : -f2 | cut -d ' ' -f2
