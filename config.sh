#!/bin/bash

cp bashrc ~/.bashrc
source ~/.bashrc

cp xinitrc ~/.xinitrc
mkdir ~/.config
cp fehbg ~/.config/.fehbg

cp -r i3 ~/.i3

while read pkg; do
    sudo pacman -S $pkg | yes
done <packages.txt

mkdir ~/git_repos
cd ~/git_repos
while read repo; do
    git clone http://www.github.com/kennethwong15/$repo
done <repo.txt

