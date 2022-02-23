#!/bin/bash

cd ~

# install ohmyzsh 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# pull basicfiles git
git clone https://github.com/rivermatt/basicfiles


# move .vimrc .zshrc and themes into place
mv ./basicfiles/.vimrc ~/.vimrc
mv ./basicfiles/.zshrc ~/.zshrc
rsync -a ./basicfiles/zsh-themes/* ~/.oh-my-zsh/themes/*


# pull and install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ~



# pull kdepostinstall git
git clone git@github.com:RiverMatt/kdepostinstall


# move files into ~/.config/
cd kdepostinstall
rsync -a * ~/.config/

cd ~

# print cleanup
echo "Remember to chsh -s /bin/zsh and install zsh-syntax-highlighting from pacman"
