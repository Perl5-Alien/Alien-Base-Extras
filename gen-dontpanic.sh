#!/bin/bash -x

# bash strict (see http://redsymbol.net/articles/unofficial-bash-strict-mode/)
set -euo pipefail
IFS=$'\n\t'

cd dontpanic
./autogen.sh
./configure
make dist
cp -f dontpanic-*.tar.gz ../Acme-Alien-DontPanic/inc
