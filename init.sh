#!/bin/bash

set -e
set -x

rm -rf build
mkdir build
pushd build

conan install ..
cmake .. -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_BUILD_TYPE=Release
cmake --build .
