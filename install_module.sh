#!/bin/sh

RAKUDO_BUILD_VERSION=2014-12-1

RAKUDO_PATH=/home/travis/rakudo-$RAKUDO_BUILD_VERSION

echo Instaling $1

DESTDIR=$RAKUDO_PATH/languages/perl6 $RAKUDO_PATH/bin/perl6 $RAKUDO_PATH/bin/panda install $1

