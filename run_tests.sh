#!/bin/sh

BASEDIR=$(dirname $0)
source $BASEDIR/version.sh

prove -ve "/home/travis/rakudo-$RAKUDO_BUILD_VERSION/bin/perl6 -Ilib"

