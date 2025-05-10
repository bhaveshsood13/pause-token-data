import torch
import numpy as np
import pandas as pd


def foo():
    return 1

def goo():
    return 1/0


if __name__=="__main__":
    print(foo())
    print(goo())
    