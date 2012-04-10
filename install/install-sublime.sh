#/bin/bash

# store current directory
local current_dir=`echo ${PWD}`

add-apt-repository --yes ppa:webupd8team/sublime-text-2
apt-get install -y --force-yes sublime-text-2-beta

# install git plugin
cd ~/.config/sublime-text-2/Packages/
git clone git://github.com/kemayo/sublime-text-2-git.git Git

# restore current directory
cd ${current_dir}