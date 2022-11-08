#!/bin/bash

apt update
apt -qy upgrade
apt -qy install devscripts autoconf automake adduser fakeroot sudo equivs lintian
mk-build-deps -t "apt-get -y -o Debug::pkgProblemResolver=yes --no-install-recommends" -i -r
# adduser --disabled-password --gecos "" builduser
# chown -R builduser:builduser .
# chown builduser:builduser ..
dpkg-buildpackage -b -rfakeroot