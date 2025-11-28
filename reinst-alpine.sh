#!/bin/bash
#  Copyright (C) Rocco Himel
echo "RUN AS ROOT!"
echo "Installing fastfetch..."
apk add fastfetch
echo "Installing htop..."
apk add htop
echo "Installing tmux..."
apk add tmux
echo "Installing sudo..."
apk add sudo
echo "Installing Lay..."
cp /usr/local/lib/lay/lay /usr/local/bin -v
cp /usr/local/lib/lay/lay-tks /usr/local/bin -v
cp /usr/local/lib/lay.1 /usr/share/man/man1 -v
cp /usr/local/lib/lay/lay-uninst /usr/local/bin -v
cp /usr/local/lib/lay/lay-reinst-alpine /usr/local/bin -v
chmod +x /usr/local/bin/lay -v
chmod +x /usr/local/bin/lay-tks -v
chmod +x /usr/local/bin/lay-uninst -v
chmod +x /usr/local/bin/lay-reinst-alpine -v
echo "Cleaning up..."
cd
echo "Done!"
echo "If you want to reinstall Lay, please run 'lay-reinst-alpine'"
echo "If you want to uninstall Lay, please run 'lay-uninst'"
