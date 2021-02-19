
from ctypes import *

dreamLib = cdll.LoadLibrary('./lib/dream.so')


class LLVMBuilder:

    ObjPtr = POINTER(c_char)

    def __init__(self):
        self.map_bindings()
        self.context = dreamLib.llvm_init()
        self.scope = self.init_str("[global scope]")

    def run(self, llvm_output=False):
        dreamLib.llvm_run(self.context, False, llvm_output)

    def map_bindings(self):
        ObjPtr = LLVMBuilder.ObjPtr

        def bind(obj, return_type, *arg_types):
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
        bind(dreamLib.int_type, ObjPtr)
        bind(dreamLib.call_standard_c, ObjPtr)

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

    def call(self, name, *args):
        ObjPtr = LLVMBuilder.ObjPtr

        args = self.py_to_c(args)

        c_args = (ObjPtr * len(args))(*args)

        return dreamLib.call_standard_c(self.context, self.c_str(name), len(c_args), c_args)

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