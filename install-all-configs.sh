#!/usr/bin/env bash

set -o nounset      # exit with non-zero status if expansion is attempted on an unset variable
set -o errexit      # exit immediatelly if a pipeline, a list, or a compound command fails
set -o pipefail     # failures in pipe in the commands before last one, also count as failures

# Trapping non-zero exit codes:
on_error() {
    line_num="$1"
    echo "Caught error on line $line_num"
}

on_exit() {
    true
}

on_interrupt() {
    true
}
trap 'on_error $LINENO' ERR
trap on_exit EXIT
trap on_interrupt INT


wget --quiet --output-document ~/.bashrc https://raw.githubusercontent.com/Dmitrii-I/configs/master/bashrc
wget --quiet --output-document ~/.bash_profile https://raw.githubusercontent.com/Dmitrii-I/configs/master/bashrc
wget --quiet --output-document ~/.vimrc https://raw.githubusercontent.com/Dmitrii-I/configs/master/vimrc
wget --quiet --output-document ~/.sqliterc https://raw.githubusercontent.com/Dmitrii-I/configs/master/sqliterc
wget --quiet --output-document ~/.psqlrc https://raw.githubusercontent.com/Dmitrii-I/configs/master/psqlrc


[ -d ~/.vim/bundle/vim-colors-solarized ] && rm -rf ~/.vim/bundle
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/autoload
wget --quiet --output-document ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
mkdir -p ~/.vim/undo

# Install vim-airline plugin
wget --quiet --output-document /tmp/vim-airline.zip https://github.com/vim-airline/vim-airline/archive/master.zip
unzip -qq /tmp/vim-airline.zip -d /tmp/vim-airline-master
rm /tmp/vim-airline.zip
rm --recursive --force ~/.vim/bundle/vim-airline
mv /tmp/vim-airline-master/vim-airline-master ~/.vim/bundle/vim-airline


# Install vim-colors-solarized plugin
wget --quiet --output-document /tmp/vim-colors-solarized.zip https://github.com/altercation/vim-colors-solarized/archive/master.zip
unzip -qq /tmp/vim-colors-solarized.zip -d /tmp/vim-colors-solarized-master
rm /tmp/vim-colors-solarized.zip
rm --recursive --force ~/.vim/bundle/vim-colors-solarized
mv /tmp/vim-colors-solarized-master/vim-colors-solarized-master ~/.vim/bundle/vim-colors-solarized

