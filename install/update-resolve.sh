#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SOURCE="$( dirname "$DIR" )/etc/bind9/dev.conf"

echo "include $SOURCE"  > /etc/bind/named.conf.local
echo "127.0.0.1"        > /etc/resolv.conf