
from ctypes import *

dreamLib = cdll.LoadLibrary('./lib/dream.so')


class LLVMBuilder:

    ObjPtr = POINTER(c_char)

    def __init__(self):
        self.map_bindings()
        self.context = dreamLib.llvm_init()
        self.scope = self.init_str("[scope]")

        #self.scope = None

    def run(self, llvm_output=False):
        dreamLib.llvm_run(self.context, False, llvm_output)

    def map_bindings(self):
        ObjPtr = LLVMBuilder.ObjPtr

        def bind(obj, return_type, *arg_types):
            if return_type is not None:
                obj.restype = return_type
            if len(arg_types) > 0:
                obj.argtypes = arg_types

        bind(dreamLib.llvm_init, ObjPtr)
        bind(dreamLib.llvmInt, ObjPtr, ObjPtr, c_int)
        bind(dreamLib.llvmStr, ObjPtr, ObjPtr, ObjPtr)

        bind(dreamLib.num, ObjPtr, ObjPtr, c_int)
        bind(dreamLib.str, ObjPtr, ObjPtr, c_char_p)

        bind(dreamLib.add, ObjPtr)
        bind(dreamLib.sub, ObjPtr)
        bind(dreamLib.mul, ObjPtr)
        bind(dreamLib.divi, ObjPtr)
        bind(dreamLib.retVal, ObjPtr)
        bind(dreamLib.int_type, ObjPtr)
        bind(dreamLib.call_standard_c, ObjPtr)
        bind(dreamLib.func, ObjPtr)
        bind(dreamLib.end_func, ObjPtr)

    def c_str(self, value):
        return c_char_p(value.encode('utf-8'))

    def py_to_c(self, py_vals):
        vals = []
        lst = type(py_vals) is tuple
        if not lst:
            py_vals = [py_vals]
        for val in py_vals:
            if type(val) is str:
                vals.append(dreamLib.llvmStr(self.context, self.c_str(val)))
            elif type(val) is int:
                vals.append(dreamLib.llvmInt(self.context, val))
            else:
                vals.append(val)
        if not lst:
            return vals[0]
        return vals

    def call(self, name, *args, scoped = False):
        ObjPtr = LLVMBuilder.ObjPtr
        args = self.py_to_c(args)

        c_args = (ObjPtr * len(args))(*args)
        #if scope is not None:

        #    return dreamLib.call_standard_c(self.context, self.c_str(name), len(c_args), c_args, scope)
        arg_len = len(c_args)
        if scoped: arg_len -= 1
        return dreamLib.call_standard_c(self.context, self.c_str(name), arg_len, c_args)

    def init_func(self, name, *arg_names):

        arg_names = [c_char_p(val.encode('utf-8')) for val in arg_names]

        args = (c_char_p * len(arg_names))(*arg_names)

        return dreamLib.func(self.context, self.scope, self.c_str(name), len(arg_names), args)

    def end_func(self, func_data):

        dreamLib.end_func(self.context, self.scope, func_data)

    def init_str(self, value):
        return dreamLib.str(self.context, self.c_str(value))

    def init_num(self, value):
        return dreamLib.num(self.context, value)

    def add(self, value1, value2):
        return dreamLib.add(self.context, value1, value2)

    def sub(self, value1, value2):
        return dreamLib.sub(self.context, value1, value2)

    def div(self, value1, value2):
        return dreamLib.divi(self.context, value1, value2)

    def mul(self, value1, value2):
        return dreamLib.mul(self.context, value1, value2)

    def ret(self, value):
        return dreamLib.retVal(self.context, self.py_to_c(value))

    def set_var(self, key, value, obj=None):
        if obj is None:
            obj = self.scope
        return self.call("set_var", obj, key, value)

    def get_var(self, key, obj=None):
        if obj is None:
            obj = self.scope
        return self.call("get_var", obj, key)


class CompileContext:

    def __init__(self):
        self.builder = LLVMBuilder()
        self.scope = self.builder.scope
        # print(self.scope)

    def func(self, name, *args):
        return self.new_func(self.builder, name, *args)

    class new_func:
        def __init__(self, builder, name, *args):
            self.builder = builder
            self.name = name
            self.args = args

        def __enter__(self):
            #print(self.args)

            self.func = self.builder.init_func(self.name, *self.args)
            #print(self.func)

            return self.builder

        def __exit__(self, type, value, traceback):

            self.builder.end_func(self.func)
            #self.builder.end_func(self.func)


context = CompileContext()

with context.func("dog", "fekw") as builder:
    context.builder.call("print", context.builder.init_str("123"))
    builder.ret(builder.init_str("yuh"))

#context.builder.call("print", builder.init_str("yuh"))

with context.func("bro", "name") as builder:
    context.builder.call("print", context.builder.init_str("yooo"))
    context.builder.call("print", context.builder.init_str("abc"))
    context.builder.call("dog", context.builder.init_str("abc"),context.builder.init_str("abc"), scoped=True)
    #f = context.builder.init_str("[scope]")
    #context.builder.call("dog", builder.scope, builder.init_str("no"), scoped=True)
    builder.ret(builder.init_str("yuh"))


ret = context.builder.call("dog", context.builder.scope, context.builder.init_str("no"), scoped=True)

context.builder.call("print", ret)

context.builder.ret(0)
context.builder.run(False)


"""
builder = LLVMBuilder()
builder.set_var("yup", builder.init_num(10))
builder.set_var("heyy", builder.init_str("fwopek"))
get = builder.get_var("heyy")
builder.call("print", get)
builder.ret(0)
builder.run()
"""

"""
builder = LLVMBuilder()
num1 = builder.init_num(10)
num2 = builder.init_num(4)
result = builder.add(num1, num2)
builder.call("print", builder.init_str("10 + 4 = "))
builder.call("print", result)
builder.ret(0)
builder.run()
"""