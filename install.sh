#!/bin/bash




# install vim-pathogen https://github.com/tpope/vim-pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle

if [ ! -d ~/.vim/bundle/vim-sensible ] 
then
    git clone git@github.com:tpope/vim-sensible.git ~/.vim/bundle/vim-sensible
fi
if [ ! -d ~/.vim/bundle/vim-airline ] 
then
    git clone git@github.com:vim-airline/vim-airline.git ~/.vim/bundle/vim-airline
fi
if [ ! -d ~/.vim/bundle/vim-colors-solarized ] 
then
    git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
fi
if [ ! -d ~/.vim/bundle/vim-go ] 
then
    git clone git://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
fi


