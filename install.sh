#!/bin/bash

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
USER=~

# install packages

sudo $DIR/install/install-packages.sh
sudo $DIR/install/install-sublime.sh
sudo $DIR/install/install-pear.sh
sudo $DIR/install/update-resolve.sh

# replace configs
rm -Rf $USER/.config/sublime-text-2/Packages/User
ln -s $DIR/etc/sublime-text-2 $USER/.config/sublime-text-2/Packages/User