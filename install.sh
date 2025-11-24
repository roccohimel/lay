#!/bin/bash
#  Copyright (C) Rocco Himel
sudo echo "Granted root permission."
echo "Installing tmux..."
cd ~
git clone https://github.com/tmux/tmux.git
cd ~/tmux
sh autogen.sh
./configure && make
sudo install -m 755 ~/tmux/tmux /usr/local/bin/tmux
echo "Installing Lay..."
sudo cp ~/lay/lay /usr/local/bin -v
sudo cp ~/lay/tks /usr/local/bin -v
sudo cp ~/lay/lay.1 /usr/share/man/man1 -v
sudo cp ~/lay/lay-uninst /usr/local/bin -v
sudo mandb
sudo chmod +x /usr/local/bin/lay -v
sudo chmod +x /usr/local/bin/tks -v
sudo chmod +x /usr/local/bin/lay-uninst -v
echo "Cleaning up..."
rm -rf ~/tmux -v
echo "Done!"
