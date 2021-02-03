from parser import *
from lexar import *

# print("love is", true, 4, "ever")


def test(name, func):
    print(name, "Passed" if func() else "Failed")


def test_math():
    test_data = '3*11-4+4-99*100/2/5-300-89-345*30'
    tokens = Tokenizer(test_data).tokenize()
    result = str(Parser(tokens).get_ast())
    return eval(test_data) == eval(result)


def print_results(test_data):
    tokens = Tokenizer(test_data).tokenize()
    result = str(Parser(tokens).get_ast())
    print(result)


test("Math:", test_math)

print_results('print("h", 3*11, "lz")')






"""
binary{
    num1 : 5 
    op : 
}

"""