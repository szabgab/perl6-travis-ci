#!/bin/sh

RAKUDO_BUILD_VERSION=2014-12-1

prove -ve "/home/travis/rakudo-$RAKUDO_BUILD_VERSION/bin/perl6 -Ilib"

