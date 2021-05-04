# Console operation app (operations)

Generate instantious operations results from the cli.
Written in python by AlphaTechnolog.

## Installing

Clone the repository:

```sh
mkdir -p ~/repo
cd ~/repo
git clone https://github.com/AlphaTechnolog/console-operation-app.git
mv console-operation-app operations
cd operations
```

Now install the app with `install.sh`:

```sh
cd ~/repo/operations
./install.sh
# ...
```

Installation successfully. To uninstall use: `uninstall.sh`:

```sh
cd ~/repo/operations
./uninstall.sh
```

Uninstalled!

## Usage

Four operations: +, -, /, * (+ = add, - = substract, * = multiply,
/ = divide), basic usage example:

```sh
operations + -N 2 2
4
```

Others operations are equal:

```sh
operations + -N 3 2 3 4 5 23 1 # Add
operations - -N 8 8 7 55 78989 7 # Substract
operations \* -N 8 6 5 4 8 9 # Multiply
operations / -N 2 2 # Divide
operations / -N 2 0 # Error: No zero division
```

## Other options

Exists the option `-NC` or `--no-compact` with it option
you must get information about the operation, example:

```sh
operations + -N 2 2 -NC
Logic:
  2 + 2
    = 4
```

## Generating the python library

Operations is writted in python, but it, you must generate
the python library for use in your python scripts, to generate
the library I create a script to generate it, as this:

```sh
# First install it:
./install.sh
# Now generate the library
./gen_lib.sh python3.9 # Specify the name of folder want to save the library, in my case is python3.9, but my python version is 3.9
# The library is now generated, if you want to learn about the library, and how to use it, you must use the lib_manual.sh script, as this:
./lib_manual.sh
# The output is a sequence of commands to manipulate the app
```

## All procediment manually

If you want to make all procediment manually, execute
the next commands sequence:

```sh
# If you want to install
sudo mkdir -p /opt/operations
sudo cp -r ./* /opt/operations
sudo chmod -R 777 /opt/operations /opt/operations/*
sudo ln -s /opt/operations/operations /usr/bin/operations
# If you want to uninstall:
sudo rm -rf /opt/operations
sudo rm /usr/bin/operations
# If you want to generate the lib (first install operations):
sudo ln -s /opt/operations $HOME/.local/lib/<python_version>/site-packages/operations
# Now you want to use operations as the lib_manual.sh
```
