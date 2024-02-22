#!/bin/bash

echo "check code style and errors ...."

cpplint --recursive src/
retval=$?
if [ $retval -eq 0 ]
then
    echo "linter check success!!"
else
    echo "linter check fail!!"
fi

echo "done."
exit $retval
