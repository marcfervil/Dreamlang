from parser import *
from lexar import *

# print("love is", true, 4, "ever")


def test(name, func):
    print(name, "Passed" if func() else "Failed")


def test_math(test_data='3*11-4+4-99*100/2/5-300-89-345*30', result=None):
    tokens = Tokenizer(test_data).tokenize()
    result = str(Parser(tokens).get_ast()) if result is None else result
    return eval(test_data) == eval(result)


def test_args():
    test_data = 'print(8, "test", 3*11-4+4-99*100/2, "lz", true, 4+4*10-22)'
    tokens = Tokenizer(test_data).tokenize()
    result = Parser(tokens).get_ast()
    setup = type(result) is CallNode and result.caller.name == "print" and len(result.args) == 6
    args = result.args
    args_check = args[0].value == 8 and args[1].value == "test" and args[3].value == "lz" and args[4].value
    math = test_math("3*11-4+4-99*100/2", str(args[2])) and test_math(" 4+4*10-22", str(args[5]))

    return setup and args_check and math

def print_results(test_data):
    tokens = Tokenizer(test_data).tokenize()
    result = Parser(tokens).get_ast()
    print(result)



print_results('print(8, "string", 3*11-4+4-99*100/2, "lz", true)')

print("\n-------tests-------")
test("Math:", test_math)
test("Func Call:", test_args)




"""
binary{
    num1 : 5 
    op : 
}

"""