#!/bin/sh

if [ $# -gt 0 ] ; then
    base=`basename $1 .c`
else
    for i in *.cpp; do
        echo "compiling $i"
        g++ -ggdb `pkg-config --cflags opencv` -o `basename $i .cpp` $i `pkg-config --libs opencv`;
    done
fi
