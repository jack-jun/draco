#!/usr/bin/env sh
set -evx
env | sort

mkdir build
cd build
cmake .. -DENABLE_TESTS=ON
make
./draco_tests
