#!/bin/bash
#  Copyright (C) Rocco Himel
echo "Installing tmux..."
cd ~
git clone https://github.com/tmux/tmux.git
cd ~/tmux
sh autogen.sh
./configure && make
sudo install -m 755 ~/tmux/tmux /usr/local/bin/tmux
echo "Installing lay..."
sudo cp ~/lay/lay /usr/local/bin -v
sudo cp ~/lay/tks /usr/local/bin -v
sudo chmod +x /usr/local/bin/lay -v
sudo chmod +x /usr/local/bin/tks -v
echo "Cleaning up..."
rm -rf ~/tmux -v
echo "Done!"
