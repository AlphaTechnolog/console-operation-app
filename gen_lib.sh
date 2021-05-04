#!/bin/bash
error() {
    echo $1
    exit 1
}

if [[ $1 == "" ]]; then
    error "Please specify the name of your python version to generate lib"
fi

printf "Checking if operations is installed... "

if ! [ -d /opt/operations ]; then
    error "FAIL. Operations isn't installed"
fi

if ! [ -L /usr/bin/operations ]; then
    error "FAIL. Operations isn't installed"
fi

printf "OK\nChecking for existent specified python libs folder name: $1... "

PYTHON_PATH=$HOME/.local/lib/$1/site-packages

if ! [ -d $PYTHON_PATH ]; then
    error "FAIL. Invalid path: $PYTHON_PATH"
fi

printf "OK\nChecking for existent generated lib... "

if [ -L $PYTHON_PATH/operations ]; then
    printf "FAIL. The library already exists, deleting it... "
    sudo rm -rf $PYTHON_PATH/operations
fi

printf "OK\nCreating symlink from source code to $PYTHON_PATH/operations... "
sudo ln -s /opt/operations $HOME/.local/lib/python3.9/site-packages/operations
echo "OK, Library generated successfully"
echo "To get started read the lib_manual.sh script as ./lib_manual.sh"
