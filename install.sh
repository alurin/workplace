#!/bin/bash

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/install/install-packages.sh
$DIR/install/install-pear.sh

#
#echo
#echo 'PATH=$PATH:' > ~/.bash_profile