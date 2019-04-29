#!/usr/bin/env bash

set -o nounset      # exit with non-zero status if expansion is attempted on an unset variable
set -o errexit      # exit immediatelly if a pipeline, a list, or a compound command fails
set -o pipefail     # failures in pipe in the commands before last one, also count as failures

# Convenience functions from: https://github.com/Dmitrii-I/bash-scripts/blob/master/lib-bash-generic.sh
source /opt/tutti-dw/symlinks/tutti-env-vars.sh

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

sudo apt-get install pspg -y && ln -sf ~/configs/psqlrc ~/.psqlrc

