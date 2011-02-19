#! /bin/sh

if [ ! -e bin/python ]
then
    mkdir -p pythonbuild
    cd pythonbuild
    
    $1/configure --enable-ipv6
    make
    
    mkdir -p ../bin/Modules
    mkdir -p ../lib
    mkdir -p ../include/Python

    if [ -e ./python.exe ]
    then
        cp ./python.exe ../bin/python
    else
        cp ./python ../bin/python
    fi

    cp ./libpython3.1.a ../lib/
    cp -R $1/Lib ../bin/Lib
    cp ./build/lib.*/*.so ../bin/Modules/
    cp ./pyconfig.h ../include/Python
fi

