#!/bin/sh

ROOT_DIR=$(cd $(dirname $0); pwd)

for file in "$ROOT_DIR"/*; do
    if [ -d $file ]; then
        if [ `basename $file` = "vim" ]; then
            ln -s $file ~/.vim
            echo "~/.vim created"
        elif [ `basename $file` = "bin" ]; then
            continue
        else
            for file in "$file"/*; do
                name=.`basename $file`
                ln -s $file ~/$name
                echo "~/$name created"
            done
        fi
    fi
done
