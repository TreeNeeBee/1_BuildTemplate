#!/bin/bash

for dir in `find * -maxdepth 0 -type d` ; do
    mkdir -p $dir/build
    cd $dir/build
    rm -rf *
    cmake .. && make -j8 && make install
    cd ../..
done