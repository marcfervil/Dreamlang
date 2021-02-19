import ctypes
import time

from parser import *
from lexar import *

# print("love is", true, 4, "ever")
from runtime import Dream
from ctypes import cdll

dream = cdll.LoadLibrary('./lib/dream.so')

"""
//struct that represents llvm data
typedef struct LLVMData{
    LLVMContext context;
    Module * module;
    Function *mainFunc;
    BasicBlock *currentBlock;
    ExecutionEngine* engine;
    LLVMBuilder * builder;
    std::unique_ptr<Module> owner;
    
} LLVMData;

"""

import ctypes
from ctypes import *



ObjPtr = ctypes.POINTER(ctypes.c_char)

dream.llvm_init.restype = ObjPtr

dream.llvmInt.argtypes = [ObjPtr, c_int]
dream.llvmInt.restype = ObjPtr

dream.llvmStr.argtypes = [ObjPtr, ObjPtr]
dream.llvmStr.restype = ObjPtr

dream.num.argtypes = [ObjPtr, c_int]
dream.num.restype = ObjPtr

dream.str.argtypes = [ObjPtr, ctypes.c_char_p]
dream.str.restype = ObjPtr

dream.add.restype = ObjPtr

dream.test2b.argtypes = [ObjPtr]

dream.int_type.restype = ObjPtr


dream.get_value.restype = ObjPtr


dream.call_standard_c.argtypes = [ObjPtr, ctypes.c_char_p, c_int, ctypes.Array]
dream.call_standard_c.restype = ObjPtr

context = None

def call(context, name,  *valsOg):
    vals = []
    for val in valsOg:
        if type(val) is str:
            vals.append(dream.llvmStr(context, llvmStr(val)))
        elif type(val) is int:
            vals.append(dream.llvmInt(context, val))
        else:
            vals.append(val)
    args = (ObjPtr * len(vals))(*vals)
    ch = ctypes.c_char_p(name.encode('utf-8'))
    dream.call_standard_c(context, ch, len(vals), args)
dream.call = call


def llvmStr(value):
    return ctypes.c_char_p(value.encode('utf-8'))


def timing_decorator(func):
    def wrapper(*args, **kwargs):
        start = time.time()
        original_return_val = func(*args, **kwargs)
        end = time.time()
        print("time elapsed in ", func.__name__, ": ", end - start, sep='')
        return original_return_val

    return wrapper


def dream_setup():
    global context
    context = dream.llvm_init()

    num1 = dream.num(context, 453)
    num2 = dream.num(context, 24)
    msg = dream.str(context, llvmStr("453 + 24 = "))

    math = dream.add(context, num1, num2)
    dream.call(context, "print", msg)
    dream.call(context, "print", math)

    dream.retVal(context, dream.llvmInt(context, 0))
    return context


@timing_decorator
def dream_test():
    dream.llvm_run(context)

@timing_decorator
def py_test():
    a = int(453)
    b = int(24)
    c = a+b
    print(c)

dream_setup()
dream_test()
py_test()

"""
AST TODO:
    - boolean logic:
        equals [done]
        or 
        and
        not equals
        greater than
        less than
    -parenthesis math evaluation     
    - variables
        dot calling
    - multiline ast generation
    - control flow:
        if statements
        while loop
    
    
IDEA:

    bool logic contains data
    
    (x == "true") -> left  returns x 
    
    
    examples override
    
    "hey" {
        toString(){
            return "nope"
        }
    }
"""



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


hopes = (("""

    func f(test, r){
        return test + r
    }
    
    print(f("yuj", "em"))

"""))

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


#the_works()

#dream = Dream(listiter)
#print(dream.tokens)
#print(dream.tokens)
#dream.eval()


"""
print("\n-------tests-------")
test("Math:", test_math)
test("Bool:", test_bool)
test("Func Call:", test_args)
test("Var Declaration:", test_var)
"""