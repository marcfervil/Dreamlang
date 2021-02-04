from parser import *
from lexar import *

# print("love is", true, 4, "ever")
"""
AST TODO:
    - boolean logic:
        equals
        not equals
        greater than
        less than     
    - variables
    - multiline ast generation
    - control flow:
        if statements
        while loop
    
"""


def test(name, func):
    print(name, "Passed" if func() else "Failed")


def test_math(test_data='3*11-4+4-99*100/2/5-300-89-345*30', result=None):
    tokens = Tokenizer(test_data).tokenize()
    result = str(Parser(tokens).get_ast()) if result is None else result
    math = eval(test_data) == eval(result)
    return math


# TODO: test w/ different positional args
def test_args():
    test_data = 'print(8, "test", 3*11-4+4-99*100/2, "lz", true, 4+4*10-22)'
    tokens = Tokenizer(test_data).tokenize()
    result = Parser(tokens).get_ast()
    setup = type(result) is CallNode and result.caller.name == "print" and len(result.args) == 6
    args = result.args
    args_check = args[0].value == 8 and args[1].value == "test" and args[3].value == "lz" and args[4].value
    math = test_math("3*11-4+4-99*100/2", str(args[2])) and test_math(" 4+4*10-22", str(args[5]))
    return setup and args_check and math


# TODO: test w/ other bool ops
def test_bool():
    left = "5 * 33 - 90 / 32 / 53 - 2"
    right = "22*49-4+49"
    tokens = Tokenizer(f"{left}=={right}").tokenize()
    result = Parser(tokens).get_ast()
    setup = type(result) is BinaryNode and result.op.value == "=="
    bool = test_math(str(result.left), left) and test_math(str(result.right), right)
    return setup and bool


def print_results(test_data, debug_tokens=False):
    tokens = Tokenizer(test_data).tokenize()
    if debug_tokens: print(tokens)
    result = Parser(tokens).get_ast()
    print(result)



#print_results('happy(2*8+49*39==10+33/5)')


print("\n-------tests-------")
test("Math:", test_math)
test("Bool:", test_bool)
test("Func Call:", test_args)




"""
binary{
    num1 : 5 
    op : 
}

"""