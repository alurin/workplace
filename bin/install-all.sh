#!/bin/bash

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/install-ubuntu.sh
$DIR/install-pear.sh