#!/usr/bin/env zsh

date=$(date +%F)

cd ~/ || exit

tar -I zstd --exclude-vcs --exclude-caches -g /Users/backup/home.snar -cf - /Users/smalhu01 | ssh 10.173.48.129 cat>/home/smalhu01/${date}-backup.tar.zstd 
