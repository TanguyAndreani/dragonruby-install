#!/usr/bin/env bash

# sudo mkdir /opt/user
# chown user:user /opt/user
# ./unpack_dragonruby.bash ~/Downloads/dragonruby-gtk-linux-amd64.zip /opt/user/

ZIP=${1}
INSTALLDIR=${2}

unzip ${ZIP} -d ${INSTALLDIR}
