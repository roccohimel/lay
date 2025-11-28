#!/bin/bash
#  Copyright (C) Rocco Himel
#  install script for systems NOT on Alpine Linux
sudo echo "Granted root permission."
echo "Installing tmux..."
cd ~
# install tmux
git clone https://github.com/tmux/tmux.git
cd ~/tmux
sudo sh ~/tmux/autogen.sh
sudo ~/tmux/configure && sudo make
# copy deps to /usr/local (/bin)
sudo install -m 755 ~/tmux/tmux /usr/local/bin/tmux
echo "Installing Lay..."
sudo cp ~/lay/lay /usr/local/bin -v
sudo cp ~/lay/lay-tks /usr/local/bin -v
sudo cp ~/lay/lay.1 /usr/share/man/man1 -v
sudo cp ~/lay/lay-uninst /usr/local/bin -v
sudo cp ~/lay/lay-reinst /usr/local/bin -v
sudo cp ~/lay/lay-update /usr/local/bin -v
sudo cp -r ~/lay /usr/local/lib -v # copy clone to /usr/local/lib
sudo mandb # make changes to man
# make deps executable
sudo chmod +x /usr/local/bin/lay -v
sudo chmod +x /usr/local/bin/lay-tks -v
sudo chmod +x /usr/local/bin/lay-uninst -v
sudo chmod +x /usr/local/bin/lay-reinst -v
sudo chmod +x /usr/local/bin/lay-update -v
echo "Cleaning up..."
cd
echo "Done!"
echo "If you want to reinstall Lay, please run 'lay-reinst'"
echo "If you want to uninstall Lay, please run 'lay-uninst'"
echo "If you want to update Lay, please run 'lay-update'"
