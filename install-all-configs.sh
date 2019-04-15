#!/usr/bin/env bash
set -x

ln -sf ~/configs/bashrc ~/.bashrc
ln -sf ~/configs/bashrc ~/.bash_profile
ln -sf ~/configs/vimrc ~/.vimrc
ln -sf ~/configs/ansible.cfg ~/.ansible.cfg
ln -sf ~/configs/sqliterc ~/.sqliterc



[ -d ~/.vim/bundle/vim-colors-solarized ] && rm -rf ~/.vim/bundle
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/autoload
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
mkdir -p ~/.vim/undo

cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
git clone git://github.com/vim-airline/vim-airline


