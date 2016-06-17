#!/bin/bash

DEV=${1:-`pwd`}
echo "DEV = $DEV"

USR=$DEV/usr

mkdir -p $USR/src $USR/opt $USR/lib $USR/bin

if [ ! -f $USR/.env ]
  then
    echo "#!/bin/bash" >> $USR/.env
    echo "export USR=$USR" >> $USR/.env
    echo 'export PATH=$PATH:$USR/bin' >> $USR/.env
    echo "export BEEP=/usr/share/sounds/KDE-K3B-Finish-Success.ogg" >> $USR/.env
fi

source funcs.sh

