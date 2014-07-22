#!/bin/bash
if [ -d ../.weechat ]; then
	rmdir ../.weechat
elif [ -L ../.weechat ]; then
	rm ../.weechat
fi
ln -s `pwd`/.weechat ../.weechat