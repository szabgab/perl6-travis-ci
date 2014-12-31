

Working directory on Travis-CI:
/home/travis/build/USER/PROJECT

If the 'language' is set to C the server has perl 5.14.2 installed along with TAP::Harness v3.23.
as shown by prove --version.


Prepareing Rakudo to be used for Continues integration

Create a Digital Ocean Droplet  (1GB Ram  Ubuntu 14.04 x64)  Ubuntu 12.04.05 x64)

# ssh root@IP
# aptitude update
# aptitude -y safe-upgrade
# sudo reboot


# ssh root@IP
# aptitude -y install gcc make
# wget  http://rakudo.org/downloads/star/rakudo-star-2014.12.1.tar.gz
# tar xzf rakudo-star-2014.12.1.tar.gz
# cd rakudo-star-2014.12.1
# perl Configure.pl --backends=moar --gen-moar --prefix=/home/travis/rakudo-2014-12-1-2
# make
# make install
# cd /home/travis
# tar czf rakudo-2014-12-1-2.tar.gz rakudo-2014-12-1-2


scp root@IP:/home/travis/rakudo-2014-12-1.tar.gz .

The I've uploaded it to http://dwimperl.com/



