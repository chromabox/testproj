#!/bin/bash

echo "check code style and errors ...."

cd build
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
cd ..
clang-tidy $(find . -name "*.h" -or -name "*cpp") -p ./build --warnings-as-errors=*
retval=$?
if [ $retval -eq 0 ]
then
    echo "linter check success!!"
else
    echo "linter check fail!!"
fi

echo "done."
exit $retval