#!/usr/bin/zsh
echo "picoCTF{$(sed -n 24p VaultDoorTraining.java | cut -d '"' -f2)}"
