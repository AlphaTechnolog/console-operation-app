import argparse
from typing import Any

parser = argparse.ArgumentParser(description="Easy operations.")

parser.add_argument(
    "operation",
    help="Operation token. (for * use \*)",
    choices=("+", "-", "*", "/")
)

parser.add_argument(
    "-N", "--numbers",
    type=int,
    help="Numbers list", required=True,
    nargs="+",
)

parser.add_argument(
    "-NC", "--no-compact",
    action="store_true",
    help="Show without compact method (all empleated logic)",
)
