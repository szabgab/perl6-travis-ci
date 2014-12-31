#!/bin/sh

sudo apt-get install -qq lsb-core

OLD_DIR=`pwd`
perl -v
prove --version

BASEDIR=$(dirname $0)
. $BASEDIR/version.sh
echo $RAKUDO_BUILD_VERSION
echo $RAKUDO_PATH

cd /home/travis/
wget http://dwimperl.com/download/rakudo-$RAKUDO_BUILD_VERSION.tar.gz
tar xzf rakudo-$RAKUDO_BUILD_VERSION.tar.gz
cd $OLD_DIR

# Run it once in order to avoid the error when the user really wants to install a module
DESTDIR=$RAKUDO_PATH/languages/perl6 $RAKUDO_PATH/bin/perl6 $RAKUDO_PATH/bin/panda

