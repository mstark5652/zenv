#!/bin/zsh

USR_BIN='/usr/local/bin/'

cp './zenv.zsh' "$USR_BIN/zenv"
chmod -x "$USR_BIN/zenv"
if [ -f "$USR_BIN/zenv" ]
then
    echo "Install complete."
    exit 0
else
    echo "Install failed."
    exit 1
fi
