#!/bin/sh

RAKUDO_BUILD_VERSION=2014-12-1

echo Instaling $1

/home/travis/rakudo-$RAKUDO_BUILD_VERSION/bin/perl6 /home/travis/rakudo-$RAKUDO_BUILD_VERSION/bin/panda install $1
