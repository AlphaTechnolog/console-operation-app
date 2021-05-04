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
