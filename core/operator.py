from typing import Callable
from functools import reduce


class Operator:
    def __init__(self: Callable, operation: str, numbers: list[int], no_compact: bool) -> Callable:
        self.operation = operation
        self.numbers = numbers
        self.compact = not no_compact

    def operate(self: Callable) -> int:
        if self.operation == "+":
            result = reduce(lambda x, y: x + y, self.numbers)
        elif self.operation == "-":
            result = reduce(lambda x, y: x - y, self.numbers)
        elif self.operation == "/":
            result = reduce(lambda x, y: x / y, self.numbers)
        elif self.operation == "*":
            result = reduce(lambda x, y: x + y, self.numbers)

        if self.compact:
            print(result)
        else:
            print("Logic:\n  {}".format(
                f" {self.operation} ".join(
                    map(lambda n: str(n), self.numbers)
                )
            ))
            print("    = {}".format(result))

        return 0
