#!/bin/sh
# build Vim from the source for Ubuntu


sudo apt-get build-dep -y vim

sudo apt-get install -y libxmu-dev libgtk2.0-dev libxpm-dev mercurial python3-dev

hg clone https://vim.googlecode.com/hg/ vim

cd vim

./configure \
--with-features=huge \
--with-compiledby="shigo <i.signal405@gmail.com>" \
--enable-cscope \
--enable-multibyte \
--enable-fontset \
--enable-python3interp \
--enable-pythoninterp \
--enable-rubyinterp \
--enable-fail-if-missing
--enable-gui=gtk2

make

sudo make install
