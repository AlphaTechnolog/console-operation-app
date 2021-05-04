#!/bin/bash

echo "Checking existent installation..."

error() {
    echo $1
    exit 1
}

if ! test -d /opt/operations; then
    error "First run install.sh"
fi

if ! test -L /usr/bin/operations; then
    error "First run install.sh"
fi

printf "Removing /opt/operations... "
sudo rm -rf /opt/operations
printf "OK!\nRemoving /usr/bin/operations... "
sudo rm /usr/bin/operations
echo "OK, uninstallation successfully"
