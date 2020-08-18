#!/usr/bin/env bash
set -e

# ./unpack_dragonruby.bash ~/Downloads/dragonruby-gtk-linux-amd64.zip .

if [ "$#" -ne 2 ]; then
    echo "USAGE"
    echo "	${0} dragonruby.zip target"
    echo
    echo "	dragonruby.zip	DragonRuby from itch.io"
    echo "	target		directory where your mygame folder is"
    echo
    echo "EXAMPLE"
    echo "	\$ ls ."
    echo "	mygame"
    echo "	\$ ${0} ~/Downloads/dragonruby-gtk-linux-amd64.zip ."
    exit 1
fi

ZIP=${1}
INSTALLDIR=${2}

DRDIR="dragonruby-linux-amd64"

unzip ${ZIP}

rm -rv ${DRDIR}/{mygame,samples}

mv ${DRDIR}/* ${INSTALLDIR}/
mv ${DRDIR}/.dragonruby ${INSTALLDIR}/

rm -rf ${DRDIR}
