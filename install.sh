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
echo "Installing fastfetch..."
git clone https://github.com/fastfetch-cli/fastfetch
cd ~/fastfetch
mkdir -p build
cd build
cmake ..
cmake --build . --target fastfetch
echo "Installing htop..."
git clone https://github.com/htop-dev/htop
cd htop
./autogen.sh && ./configure && make
echo "Installing lay..."
sudo cp ~/lay/lay /usr/local/bin -v
sudo cp ~/lay/tks /usr/local/bin -v
sudo chmod +x /usr/local/bin/lay -v
sudo chmod +x /usr/local/bin/tks -v
echo "Cleaning up..."
rm -rf ~/tmux -v
echo "Done!"
