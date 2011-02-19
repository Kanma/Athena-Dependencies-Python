#! /bin/sh

if [ ! -e bin/python ]
then
    mkdir -p pythonbuild
    cd pythonbuild
    
    $1/configure --enable-ipv6 --enable-framework=@rpath
    make
    
    mkdir -p ../bin/Modules

    if [ -e ./python.exe ]
    then
        cp ./python.exe ../bin/python
    else
        cp ./python ../bin/python
    fi

    cp -R ./Python.framework ../bin/
    cp -R $1/Lib ../bin/Lib
    cp ./build/lib.*/*.so ../bin/Modules/

    mkdir -p ../bin/Python.framework/Versions/Current/Headers
    cp ./pyconfig.h ../bin/Python.framework/Headers/
    cp $1/Include/*.h ../bin/Python.framework/Headers/

    install_name_tool -add_rpath @loader_path/ ../bin/python
fi
