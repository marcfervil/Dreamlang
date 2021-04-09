import ctypes
import time

from parser import *
from lexar import *
from compile import LLVMBuilder
from runtime import Dream




def test(name, func):
    try:
        print(name, "Passed" if func() else "Failed")
    except Exception as e:
        print(name, f"Failed Horribly: {e}")

#TODO ensure all tokens are binary or literal
def test_math(test_data='3*11-4+4-99*100/2/5-300-89/2-345*30', result=None):
    tokens = Tokenizer(test_data).tokenize()
    result = str(Parser(tokens).get_ast()) if result is None else result
    math = eval(test_data) == eval(result)
    return math


# TODO: test w/ different positional args
# TODO: test w/ nested calls
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


def test_var():
    tokens = Tokenizer('x="abc" +  123 ').tokenize()
    result = Parser(tokens).get_ast()
    setup = type(result) is AssignNode
    name = result.var.name == "x"
    binary = type(result.value) is BinaryNode
    args = result.value.left.value == "abc" and result.value.right.value == 123
    return setup and name and binary and args


def print_results(test_data, debug_tokens=False):
    tokens = Tokenizer(test_data).tokenize()
    if debug_tokens: print(tokens)
    result = Parser(tokens).get_ast(node=BodyNode())
    print(result)




loop = open("examples/loop.drm").read()
listiter = open("examples/listiter.drm").read()
bools = open("examples/boollogic.drm").read()
export = open("examples/export.drm").read()
comments = open("examples/comments.drm").read()
list = open("examples/list.drm").read()
hector = open("examples/hectormath.drm").read()
this = open("examples/this.drm").read()
oop = open("examples/oop.drm").read()
scope = open("examples/scope.drm").read()
inline = open("examples/inline.drm").read()
subtract = open("examples/subtract.drm").read()
sugar = open("examples/sugar.drm").read()


def the_works():
    print("--------THE WORKS--------")
    dream = Dream(this).eval()
    print("---------------------")
    dream = Dream(comments).eval()
    print("---------------------")
    dream = Dream(hector).eval()
    print("---------------------")
    dream = Dream(oop).eval()
    print("---------------------")
    dream = Dream(scope).eval()
    print("---------------------")
    dream = Dream(export).eval()
    print("---------------------")
    dream = Dream(inline).eval()
    print("---------------------")
    dream = Dream(subtract).eval()
    print("---------------------")
    dream = Dream(listiter).eval()


#exit()


#the_works()

#hopes = (open("tests/func_scope_test.drm").read())
#hopes = (open("tests/object_properties_test.drm").read())
#hopes = (open("tests/list_test.drm").read())
hopes = (open("code/debug.drm").read())
#hopes = (open("examples/addition_over.drm").read())
#hopes = (open("examples/comp.drm").read())

#dream = Dream("print((3*11-4+4-99)/2)") # == -33
dream = Dream(hopes)
#dream.eval()
#print("")
#print(dream.tokens)
dream.compile(False, True)
#print(dream.get_ast())
#print(dream.tokens)

#  %10 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*, %dreamObj*)* @merge to i8*))

#
##/Users/marcfervil/Library/Android/sdk/emulator/emulator -list-avds

#print(dream.tokens)
#print(dream.tokens)



"""
print("\n-------tests-------")
test("Math:", test_math)
test("Bool:", test_bool)
test("Func Call:", test_args)
test("Var Declaration:", test_var)
"""