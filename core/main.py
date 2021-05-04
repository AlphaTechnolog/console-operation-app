from typing import Dict, Any
from core.operator import Operator


def main(**arguments: Dict[str, Any]) -> int:
    operator = Operator(**arguments)
    try:
        return operator.operate()
    except (ZeroDivisionError):
        print("Invalid number zero in division")
        return 1
