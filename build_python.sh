#! /bin/sh

if [ ! -e pythonbuild/Makefile ]
then
    mkdir -p pythonbuild
    cd pythonbuild
    
    $1/configure --enable-shared --enable-ipv6 --prefix=""
    make
    
    # MacOS X specific processing
    if [ "$2" == "MacOSX" ]
    then
        mkdir -p ../bin/Modules
        mkdir -p ../include/Python
        
        cp ./python.exe ../bin/python
        cp ./libpython3.1.dylib ../bin/libpython3.1.dylib
        cp -R $1/Lib ../bin/Lib
        cp ./build/lib.macosx*/*.so ../bin/Modules/
        cp ./pyconfig.h ../include/Python

        install_name_tool -change /lib/libpython3.1.dylib libpython3.1.dylib ../bin/python
        install_name_tool -id libpython3.1.dylib ../bin/libpython3.1.dylib
    fi
fi

