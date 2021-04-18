#!/bin/bash
apt update && apt install -y curl zsh git 

echo "Starting ohmyzsh custom install"

git clone https://github.com/zsh-users/antigen.git ~/.antigen

echo "antigen -- Done"

mv ~/.zshrc{,.old} 
cp .zshrc ~/.zshrc

echo "Your .zshrc is up to date, old one is at .zshrc.old"