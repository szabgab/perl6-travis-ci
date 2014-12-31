#!/bin/sh

OLD_DIR=`pwd`
perl -v
prove --version

RAKUDO_BUILD_VERSION=2014-12-1
echo $RAKUDO_BUILD_VERSION

cd /home/travis/
wget http://dwimperl.com/download/rakudo-$RAKUDO_BUILD_VERSION.tar.gz
tar xzf rakudo-$RAKUDO_BUILD_VERSION.tar.gz
cd $OLD_DIR

