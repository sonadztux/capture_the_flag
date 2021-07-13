#!/usr/bin/zsh
rm -r */
unzip -qq *.zip
chmod +x */ -R
find */ -type f | bash -f - | cut -d ' ' -f2 
