
from ctypes import *
import os
from pathlib import Path

dreamLib = cdll.LoadLibrary('./lib/dream.so')


class LLVMBuilder:

    ObjPtr = POINTER(c_void_p)

    builtins = ["print", "dict", "set_var_c", "ptr", "copy", "deep_copy", "unmerge", "shallow_copy", "medium_copy", "merge", "ctype", "display2", "native_test", "native_int", "check"]


    def __init__(self):
        self.map_bindings()
        self.context = dreamLib.llvm_init()
        self.line = 1
        #dreamLib.llvm_link(self.context, self.c_str("dream_output.o"))

        self.scope = self.init_obj()

        self.scopes = []
        #self.scope = None

    def run(self, llvm_output=False, build=False):
        dreamLib.llvm_run(self.context, False, llvm_output, build)

    def map_bindings(self):

        ObjPtr = LLVMBuilder.ObjPtr
        def bind(obj, return_type, *arg_types):
            if return_type is not None:
                obj.restype = return_type
            if len(arg_types) > 0:
                obj.argtypes = arg_types

        bind(dreamLib.llvm_init, ObjPtr)
        bind(dreamLib.llvmInt, ObjPtr, ObjPtr, c_int)
        bind(dreamLib.llvmStr, ObjPtr)
        bind(dreamLib.native_add, ObjPtr)
        bind(dreamLib.native_sub, ObjPtr)
        bind(dreamLib.native_mul, ObjPtr)
        bind(dreamLib.native_div, ObjPtr)
        #print(vars(dreamLib))
        bind(dreamLib.num, ObjPtr, ObjPtr, c_int)
        bind(dreamLib.bool_, ObjPtr)
        bind(dreamLib.null_obj_init, ObjPtr)
        bind(dreamLib.str, ObjPtr, ObjPtr, c_char_p)
        bind(dreamLib.save, ObjPtr)
        bind(dreamLib.call, ObjPtr)
        bind(dreamLib.load, ObjPtr)
        bind(dreamLib.add, ObjPtr)
        bind(dreamLib.equals, ObjPtr)
        bind(dreamLib.contains, ObjPtr)
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
        bind(dreamLib.init_if, ObjPtr)
        bind(dreamLib.set_parent_c, ObjPtr)
        bind(dreamLib.num_llvm, ObjPtr)
        #bind(dreamLib.llvmInt, ObjPtr)

    def c_str(self, value):
        return c_char_p(value.encode('utf-8'))

    def py_to_c(self, py_vals):
        vals = []
        lst = type(py_vals) is tuple
        if not lst:
            py_vals = [py_vals]
        for val in py_vals:
            if type(val) is str:
                string = dreamLib.llvmStr(self.context, self.c_str(val))

                vals.append(string)
            elif type(val) is int or type(val) is bool:
                integer = dreamLib.llvmInt(self.context, val)

                vals.append(integer)
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
        if type(callee) is str:
            callee = self.get_var(callee)
        args = self.py_to_c(args)

        if not hasattr(callee, "built_in"):
            func_scope = self.get_var("@context", callee)

            #self.dict(func_scope)
            #self.log(func_scope.get_var("xw"))
            #func_scope = self.call("shallow_copy", func_scope)
            new_scope = dreamLib.init_scope(self.context, func_scope, 1)
            #self.reparent(func_scope, self.scope)
            #self.log( self.get_var("parent", func_scope))
            args.insert(0, new_scope)

        c_args = (LLVMBuilder.ObjPtr * len(args))(*args)

        result = dreamLib.call(self.context, callee, len(c_args), c_args)
        self.add_helpers(result)
        return result

    def init_func(self, name, is_class, *arg_names):
        arg_names = [c_char_p(val.encode('utf-8')) for val in arg_names]
        args = (c_char_p * len(arg_names))(*arg_names)
        func = dreamLib.func(self.context, self.scope, self.c_str(name), is_class, len(arg_names), args)
        self.enter_scope(self.func_scope(func))

        return func

    def init_if(self, value):
        return IfBuilder(self, value)

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
        value = dreamLib.str(self.context, self.c_str(value))
        self.add_helpers(value)
        return value

    def init_obj(self):
        value = dreamLib.null_obj_init(self.context, self.c_str("[object]"))
        self.add_helpers(value)
        return value

    def init_num(self, value):
        value = dreamLib.num(self.context, value)
        self.add_helpers(value)
        return value

    def init_bool(self, value):
        return dreamLib.bool_(self.context, value)

    def add(self, value1, value2):
        if hasattr(value1, "native_type"):
            op = dreamLib.native_add(self.context, value1, value2)
            op.native_type = int
            return op
        return dreamLib.add(self.context, value1, value2)

    def sub(self, value1, value2):
        if hasattr(value1, "native_type"):
            op = dreamLib.native_sub(self.context, value1, value2)
            op.native_type = int
            return op
        return dreamLib.sub(self.context, value1, value2)

    def div(self, value1, value2):
        if hasattr(value1, "native_type"):
            op = dreamLib.native_div(self.context, value1, value2)
            op.native_type = int
            return op
        return dreamLib.divi(self.context, value1, value2)

    def mul(self, value1, value2):
        if hasattr(value1, "native_type"):
            op = dreamLib.native_mul(self.context, value1, value2)
            op.native_type = int
            return op
        return dreamLib.mul(self.context, value1, value2)

    def set_line(self, line):
        self.line = line
        dreamLib.set_line(self.context, line)

    # def equals(self, value1, value2):
    #    return dreamLib.equals(self.context, value1, value2)

    def func_scope(self, func):
        return dreamLib.funcScope(func)

    def ret(self, value):
        return dreamLib.retVal(self.context, self.py_to_c(value))

    def native_to_dream(self, value):
        if value.native_type == int:
            return dreamLib.num_llvm(self.context, value)

    def set_var(self, key, value, obj=None, native=False):
        if obj is None:
            obj = self.scope

        if not hasattr(obj, "natives"):
            obj.natives = {}
        elif key in obj.natives.keys():
            native = True

        if native:
            obj.natives[key] = value
            return obj.natives[key]

        if hasattr(value, "native_type"):
            value = self.native_to_dream(value)
        else:
            value = self.py_to_c(value)

        return dreamLib.save(self.context, obj, self.c_str(key), value)

    def reparent(self, obj, new_parent):
        return dreamLib.set_parent_c(self.context, obj, new_parent)

    def equals(self, var1, var2):
        return dreamLib.equals(self.context, var1, var2)

    def contains(self, var1, var2):
        return dreamLib.contains(self.context, var1, var2)

    def build(self, file_name):

        dreamLib.build(self.context)
        fpath = "/Users/marcfervil/Documents/Programming/DreamLLVM/DreamLLVM/pylink.c"

        os.system(f'gcc -o {file_name[:-4]} lib/hopes.o lib/dream_output.o')
        os.system(f"./{file_name[:-4]}")
        #Path(f"{file_name[:-3]}").rename("")

        #os.system("gcc -o lib/main lib/dream_output.o")
        #os.system(f'gcc  -o lib/main lib/dream_output.o')

       # os.system("gcc -o lib/main -L . lib/dream_output.o -l dream")
        #os.system("gcc  lib/dream_output.o -o lib/main -ldream")
        #fpath = "/Users/marcfervil/Documents/Programming/DreamLLVM/DreamLLVM/pylink.c"
        #os.system(f"clang++ -L/usr/local/Cellar/llvm/11.0.1/lib -fPIC -isystem /usr/local/Cellar/llvm/11.0.1/include  -Wl,-undefined -Wl,dynamic_lookup  -fPIC -rdynamic {fpath} lib/dream_output.o -o lib/main_test -lllvm")
        #os.system("clang -framework CoreFoundation -framework IOKit dream.a -o myprogram ")


    def add_helpers(self, var):
        outer_self = self

        def inner_var_get(key):
            return outer_self.get_var(key, var)

        def inner_var_set(key, value):
            return outer_self.set_var(key, value, var)

        def reparent(parent):
            return outer_self.reparent(var, parent)

        var.get_var = inner_var_get
        var.set_var = inner_var_set
        var.reparent = reparent

    def get_var(self, key, obj=None, from_parent=None):

        if obj is None:
            obj = self.scope

        if hasattr(obj, "natives") and key in obj.natives.keys():
            return obj.natives[key]

        #value = dreamLib.load(self.context, obj, self.c_str(key), 1)

        if from_parent is None:
            value = dreamLib.load(self.context, obj, self.c_str(key), 1)
        else:
            value = dreamLib.load(self.context, obj, self.c_str(key), from_parent)


        if key in LLVMBuilder.builtins:
            value.built_in = True

        self.add_helpers(value)
        return value

    def enter_scope(self, scope):
        self.scopes.append(self.scope)
        self.scope = scope
        self.add_helpers(self.scope)
        #self.set_var("self", self.scope)

    def exit_scope(self):
        self.scope = self.scopes.pop()


class IfBuilder:
    def __init__(self, builder, value):
        self.builder = builder
        self.context = builder.context
        self.if_data = dreamLib.init_if(self.context, value)

        self.scope = dreamLib.init_scope(self.builder.context, self.builder.scope,  1)

        self.builder.enter_scope(self.scope)

    def __enter__(self):
        return self.if_data

    def __exit__(self, type_, value, traceback):
        dreamLib.end_if(self.context, self.if_data)
        self.builder.exit_scope()


class CompileContext:
    def __init__(self):
        self.builder = LLVMBuilder()
        self.scope = self.builder.scope
        self.native_type = None
        self.line = 1

    def set_line(self, line):
        if line != self.line:
            self.builder.set_line(line)
            self.line = line

    def func(self, name, *args, is_class=False):
        return self.new_func(self.builder, name, is_class, *args)

    def enter_scope(self):
        return self.NewScope(self.builder)

    class NewScope:
        def __init__(self, builder):
            self.builder = builder
            self.scope = dreamLib.init_scope(self.builder.context, self.builder.scope, 1)
            self.builder.enter_scope(self.scope)

        def __enter__(self):
            return self.scope

        def __exit__(self, type_, value, traceback):
            self.builder.exit_scope()

    class new_func:
        def __init__(self, builder, name, is_class, *args):
            self.builder = builder
            self.name = name
            self.is_class = is_class
            self.args = args


        def __enter__(self):
            self.func = self.builder.init_func(self.name, self.is_class, *self.args)
            self.scope = self.builder.func_scope(self.func)
            return self.builder, self.scope

        def __exit__(self, type, value, traceback):
            #self.builder.ret(self.builder.init_str("nadda"))
            self.builder.end_func(self.func)
            #self.builder.ret(self.builder.scope)


def test_func():
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

    b.log(b.call(b.get_var("hot")))

    context.builder.ret(0)
    context.builder.run(False)


def test_if():
    context = CompileContext()
    b = context.builder
    result = (b.equals(b.init_str("hi"), b.init_str("hi")))
    with b.init_if(result):
        b.log("it works doctor!")

    b.ret(0)
    b.run(False)

#test_if()

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