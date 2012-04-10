#!/bin/bash

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function install_from_git_with_make() {
    local name=$1
    local repo=$2
    local PWD="`pwd`"
    local current_dir=`echo ${PWD}`

    git clone --recursive $repo /tmp/$name
    cd /tmp/$name
    make
    make install
    cd ${current_dir}
}

# Add repositories
add-apt-repository --yes ppa:webupd8team/sublime-text-2

# Update all application
apt-get update
apt-get upgrade

# Install new application
cat $DIR/ubuntu-packages | sed -e 's/#.*//' | xargs apt-get install -y --force-yes

# Clone repositories for manual install
install_from_git_with_make "git-flow" "git://github.com/nvie/gitflow.git"