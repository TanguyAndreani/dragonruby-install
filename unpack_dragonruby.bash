#!/usr/bin/env bash
set -e

# ./unpack_dragonruby.bash ~/Downloads/dragonruby-gtk-linux-amd64.zip .

ZIP=${1}
INSTALLDIR=${2}

DRDIR="dragonruby-linux-amd64"

unzip ${ZIP}

rm -rv ${DRDIR}/{mygame,samples}

mv ${DRDIR}/* ${INSTALLDIR}/
mv ${DRDIR}/.dragonruby ${INSTALLDIR}/

rm -rf ${DRDIR}
