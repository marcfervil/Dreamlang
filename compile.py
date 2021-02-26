
from ctypes import *

dreamLib = cdll.LoadLibrary('./lib/dream.so')


class LLVMBuilder:

    ObjPtr = POINTER(c_void_p)

    builtins = ["print", "dict", "set_var_c", "ptr"]

    def __init__(self):
        self.map_bindings()
        self.context = dreamLib.llvm_init()
        self.scope = self.init_str("[scope]")
        self.scopes = []
        #self.scope = None

    def run(self, llvm_output=False, build=False):
        dreamLib.llvm_run(self.context, False, llvm_output,build)

    def map_bindings(self):
        ObjPtr = LLVMBuilder.ObjPtr
        def bind(obj, return_type, *arg_types):
            if return_type is not None:
                obj.restype = return_type
            if len(arg_types) > 0:
                obj.argtypes = arg_types

        bind(dreamLib.llvm_init, ObjPtr)
        bind(dreamLib.llvmInt, ObjPtr, ObjPtr, c_int)

        #SUS
        #bind(dreamLib.llvmStr, ObjPtr, ObjPtr, ObjPtr)

        bind(dreamLib.num, ObjPtr, ObjPtr, c_int)
        bind(dreamLib.bool_, ObjPtr)
        bind(dreamLib.str, ObjPtr, ObjPtr, c_char_p)
        bind(dreamLib.save, ObjPtr)
        bind(dreamLib.call, ObjPtr)
        bind(dreamLib.load, ObjPtr)
        bind(dreamLib.add, ObjPtr)
        bind(dreamLib.equals_c, ObjPtr)
        bind(dreamLib.sub, ObjPtr)
        bind(dreamLib.mul, ObjPtr)
        bind(dreamLib.divi, ObjPtr)
        bind(dreamLib.retVal, ObjPtr)
        bind(dreamLib.funcScope, ObjPtr)
        bind(dreamLib.int_type, ObjPtr)
        bind(dreamLib.call_standard_c, ObjPtr)
        bind(dreamLib.func, ObjPtr)
        bind(dreamLib.end_func, ObjPtr)
        bind(dreamLib.init_scope, ObjPtr)


    def c_str(self, value):
        return c_char_p(value.encode('utf-8'))

    def py_to_c(self, py_vals):
        vals = []
        lst = type(py_vals) is tuple
        if not lst:
            py_vals = [py_vals]
        for val in py_vals:
            if type(val) is str:
                #print("FIOWIJEOIWJOJFEOWJFIO")
                vals.append(dreamLib.llvmStr(self.context, self.c_str(val)))
            elif type(val) is int:
                vals.append(dreamLib.llvmInt(self.context, val))
            else:
                vals.append(val)
        if not lst:

            return vals[0]
        return vals

    def call_old(self, name, *args):
        ObjPtr = LLVMBuilder.ObjPtr
        #print(name, args )
        args = self.py_to_c(args)

        c_args = (ObjPtr * len(args))(*args)
        #if scope is not None:

        #    return dreamLib.call_standard_c(self.context, self.c_str(name), len(c_args), c_args, scope)
        arg_len = len(c_args)

        #if scoped: arg_len -= 1

        return dreamLib.call_standard_c(self.context, self.c_str(name), arg_len, c_args)

    def call(self, callee, *args):
        args = self.py_to_c(args)
        if not hasattr(callee, "built_in"):
            new_scope = dreamLib.init_scope(self.context, self.scope)

            args.insert(0, new_scope)
        c_args = (LLVMBuilder.ObjPtr * len(args))(*args)

        return dreamLib.call(self.context, callee, len(c_args), c_args)

    def init_func(self, name, *arg_names):
        arg_names = [c_char_p(val.encode('utf-8')) for val in arg_names]
        args = (c_char_p * len(arg_names))(*arg_names)
        func = dreamLib.func(self.context, self.scope, self.c_str(name), len(arg_names), args)
        self.enter_scope(self.func_scope(func))
        #self.log(self.scope)
        #dreamLib.init_scope(self.context, self.scope)
        #dreamLib.init_scope(self.context, self.scope)
        return func

    def log(self, item):
        if type(item) is str:
            item = self.init_str(item)
        self.call(self.get_var("print"), item)

    def dict(self, item):
        if type(item) is str:
            item = self.init_str(item)
        self.call(self.get_var("dict"), item)

    def end_func(self, func_data):

        self.exit_scope()

        dreamLib.end_func(self.context, self.scope, func_data)

        #self.exit_scope()

    def init_str(self, value):
        return dreamLib.str(self.context, self.c_str(value))

    def init_num(self, value):
        return dreamLib.num(self.context, value)

    def init_bool(self, value):
        return dreamLib.bool_(self.context, value)

    def add(self, value1, value2):
        return dreamLib.add(self.context, value1, value2)

    def sub(self, value1, value2):
        return dreamLib.sub(self.context, value1, value2)

    def div(self, value1, value2):
        return dreamLib.divi(self.context, value1, value2)

    def mul(self, value1, value2):
        return dreamLib.mul(self.context, value1, value2)

    def equals(self, value1, value2):
        return dreamLib.equals(self.context, value1, value2)

    def func_scope(self, func):
        return dreamLib.funcScope(func)

    def ret(self, value):
        return dreamLib.retVal(self.context, self.py_to_c(value))

    def set_var(self, key, value, obj=None):
        if obj is None:
            obj = self.scope
        return dreamLib.save(self.context, obj, self.c_str(key), self.py_to_c(value))

    def equals(self, var1, var2):
        return dreamLib.equals_c(self.context, var1, var2)

    def get_var(self, key, obj=None):
        if obj is None:
            obj = self.scope
        value = dreamLib.load(self.context, obj, self.c_str(key))
        if key in LLVMBuilder.builtins:
            value.built_in = True
        return value

    def enter_scope(self, scope):
        self.scopes.append(self.scope)


        self.scope = scope
        self.set_var("scope", self.scope)



    def exit_scope(self):

        self.scope = self.scopes.pop()


class CompileContext:

    def __init__(self):
        self.builder = LLVMBuilder()
        self.scope = self.builder.scope

        # print(self.scope)

    def func(self, name, *args):
        return self.new_func(self.builder, name, *args)


    #def enter_scope(self, scope):
    #   self.builder.scope = scope

    class new_func:
        def __init__(self, builder, name, *args):
            self.builder = builder
            self.name = name
            self.args = args

        def __enter__(self):
            self.func = self.builder.init_func(self.name, *self.args)
            return self.builder

        def __exit__(self, type, value, traceback):

            self.builder.end_func(self.func)
            #print("fiewj")
            #self.builder.end_func(self.func)


def test():
    context = CompileContext()
    b = context.builder

    b.set_var("hungry", b.init_str("4 apples"))
    with context.func("dog") as func:
        func.ret(func.init_str("yummy"))

    with context.func("hot") as func:
        # func.log(b.get_var("hungry"))
        b.set_var("hungry", b.init_str("5 apples"))
        # func.call(b.get_var("dict"), func.scope)
        # func.log(b.get_var("hungry"))
        func.call(b.get_var("dog"))
        func.ret(func.init_str("yummy"))

    b.call(b.get_var("hot"))

    context.builder.ret(0)
    context.builder.run(False)



#context.builder.call("print", context.builder.init_str("okkfrpwkf"))



"""
builder = LLVMBuilder()
builder.set_var("yup", builder.init_num(10))
builder.set_var("heyy", builder.init_str("fwopek"))
get = builder.get_var("heyy")
builder.call("print", get)
builder.ret(0)
builder.run()



builder = LLVMBuilder()
num1 = builder.init_num(10)
num2 = builder.init_num(4)
result = builder.add(num1, num2)
builder.call("print", builder.init_str("10 + 4 = "))
builder.call("print", result)
builder.ret(0)
builder.run()
"""