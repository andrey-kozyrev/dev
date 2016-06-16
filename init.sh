#!/bin/bash

USR_ROOT=$1

export USR_ROOT=${USR_ROOT:-`pwd`/usr}

mkdir -p $USR_ROOT/src $USR_ROOT/opt $USR_ROOT/lib $USR_ROOT/bin

if [ -f $USR_ROOT/.env ]
  then
    rm $USR_ROOT/.env
fi

echo "#!/bin/bash" >> $USR_ROOT/.env
echo "export USR_ROOT=$USR_ROOT" >> $USR_ROOT/.env
cat env	>> $USR_ROOT/.env


