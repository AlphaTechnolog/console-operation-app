#!/bin/bash

echo "Checking existent installation..."

if test -d /opt/operations; then
    printf "Removing /opt/operations... "
    sudo rm -rf /opt/operations
    echo "OK"
fi

if test -L /usr/bin/operations; then
    printf "Removing /usr/bin/operations... "
    sudo rm /usr/bin/operations
    echo "OK"
fi

printf "OK!, Copying source code to /opt/operations... "
sudo mkdir -p /opt/operations
sudo cp -r ./* /opt/operations
sudo chmod -R 777 /opt/operations /opt/operations/*
printf "OK!\nCreating symbolic link to /usr/bin/operations... "
sudo ln -s /opt/operations/operations /usr/bin/operations
sudo chmod -R 777 /opt/operations/operations
echo "OK!, installation successfully"
