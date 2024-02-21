#!/bin/bash

echo "check code style and errors ...."

cd build
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
cd ..
cp build/compile_commands.json ./
run-clang-tidy $PWD
rm compile_commands.json

echo "done."