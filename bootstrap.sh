#!/bin/bash

connect_config()
{
    if [ -d $2 ]; then
      echo Please remove existing config directory $2
      return 1
    elif [ -L $2 ]; then
      echo Please remove existing link to config $2
      return 1
    fi
    ln -s `pwd`/$1 $2
}

connect_config sublime-text-3 $HOME/.config/sublime-text-3
connect_config .weechat $HOME/.weechat