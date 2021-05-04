#!/bin/bash
cat << EOF
$ python # or python3.9, python3, ...
>>> from operations.core.operator import Operator
>>> operator = Operator(operation="+", numbers=[1,2], no_compact=False)
>>> operator.operate()
3
0
>>> return_code = operator.operate()
3
>>> print(return_code)
0
>>> operator = Operator(operation="-", numbers=[2,2], no_compact=True)
>>> return_code = operator.operate()
Logic:
  2 - 2
    = 0
>>> print(return_code)
0
>>> import sys
>>> from operations.core.main import main
>>> from operations.core.cli import parser
>>> sys.exit(main(**vars(parser.parse_args(["+", "-N", "2", "2"]))))
4
0
$ python
>>> import sys
>>> from operations.core.main import main
>>> from operations.core.cli import parser
>>> sys.exit(main(**vars(parser.parse_args(["*", "-N", "-2", "-2", "-NC"]))))
Logic:
  -2 * -2
    = -4
0
$ exit
EOF
