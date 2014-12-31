#!/bin/sh

BASEDIR=$(dirname $0)
. $BASEDIR/version.sh

echo Instaling $1

DESTDIR=$RAKUDO_PATH/languages/perl6 $RAKUDO_PATH/bin/perl6 $RAKUDO_PATH/bin/panda install $1

