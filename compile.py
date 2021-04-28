
from ctypes import *
import os
from pathlib import Path


#dreamLib = cdll.LoadLibrary('./lib/dream.so')
dreamLib = cdll.LoadLibrary("/Users/marcfervil/Documents/Programming/DreamLLVM/DreamLLVM/Build/libcompiler.dylib")

#hopesLib = cdll.LoadLibrary('./lib/hopes_lib.so')
hopesLib = cdll.LoadLibrary('/Users/marcfervil/Documents/Programming/DreamLLVM/DreamLLVM/Build/libdreamlang.dylib')



def pretty(d, indent=0):
   for key, value in d.items():
      print('\t' * indent + str(key))
      if isinstance(value, dict):
         pretty(value, indent+1)
      else:
         print('\t' * (indent+1) + str(value))


class LLVMBuilder:

    ObjPtr = POINTER(c_void_p)

    builtins = ["print", "dict", "set_var_c", "ptr", "copy", "deep_copy", "unmerge", "shallow_copy", "medium_copy", "merge", "ctype", "display2", "native_test", "native_int", "check", "printx", "dream_log", "makeText", "list", "count", "gc", "dict2", "inherit", "apply_vargs"]

    def __init__(self, platform):
        self.map_bindings()
        self.platform = platform
        self.context = dreamLib.llvm_init()
        self.line = 1

        #dreamLib.llvm_link(self.context, self.c_str("hopes_lib.so"))
        dreamLib.llvm_link(self.context, self.c_str("/Users/marcfervil/Documents/Programming/DreamLLVM/DreamLLVM/Build/libdreamlang.dylib"))

        self.scope = self.init_obj()

        self.scopes = []


    def run(self, llvm_output=False, build=False):
        dreamLib.llvm_run(self.context, False, llvm_output, build)

    def get_null(self):
        return dreamLib.get_null_val()

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
        bind(dreamLib.init_for, ObjPtr)
        bind(dreamLib.nequals, ObjPtr)

        bind(dreamLib.get_null_val, ObjPtr)
        bind(dreamLib.math_op, ObjPtr)
        bind(dreamLib.set_parent_c, ObjPtr)
        bind(dreamLib.num_llvm, ObjPtr)
        bind(dreamLib.get_pointer_value, ObjPtr)
        #bind(dreamLib.intType, ObjPtr)
        #bind(dreamLib.llvmInt, ObjPtr)

    def to_raw(self, string):
        return fr"{string}"

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
                #string.type = str
                vals.append(string)
            elif type(val) is int or type(val) is bool:
                integer = dreamLib.llvmInt(self.context, val)
                #integer.type = int
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

        has_varg = any(hasattr(arg, "vargs") and arg.vargs for arg in args)
        if hasattr(callee, "is_super"):
            callee.set_var("args", self.call("list", self.init_str("msg")))
            args = [self.call("list", *args)]



        if not hasattr(callee, "built_in"):
            func_scope = self.get_var("@context", callee)
            new_scope = dreamLib.init_scope(self.context, func_scope, 1)
            self.add_helpers(new_scope)

            if has_varg:
                #self.dict(callee)
                self.call("apply_vargs", new_scope, self.get_var("args", callee), args.pop(0))
                # this is horrible, but there's no other way to determine the number of args @ compile time
                for i in range(20):
                    args.append(self.py_to_c(0))


            args.insert(0, new_scope)
        elif callee.built_in == "print":
            if any(hasattr(arg, "native_type") for arg in args):
                call_map = {"int": "d", "str": "s"}
                call_str = [call_map[arg.native_type.__name__] if hasattr(arg, "native_type") else "x" for arg in args]
                call_str = "".join(call_name for call_name in call_str)
                return self.call("printx", call_str, *args)

        c_args = (LLVMBuilder.ObjPtr * len(args))(*args)
        result = dreamLib.call(self.context, callee, len(c_args), c_args, has_varg)
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

    def init_for(self, var_name, cond):
        return ForBuilder(self, var_name, cond)

    def get_lib(self):
        return dreamLib

    def pad(self):
        dreamLib.llvmStrConst(self.context, self.c_str("makemeto"))

    def log(self, item):
        if type(item) is str:
            item = self.init_str(item)
        log_func = "print"
        if self.platform == "Android":
            log_func = "dream_log"
        #self.get_var(log_func)
        self.call(self.get_var(log_func), item)

    def dict(self, item):
        if type(item) is str:
            item = self.init_str(item)
        self.call(self.get_var("dict"), item)

    def end_func(self, func_data):
        self.exit_scope()
        new_func = dreamLib.end_func(self.context, self.scope, func_data)
        return new_func
        #
        #self.call(g)
        #self.log(g)
        #self.exit_scope()

    def init_str(self, value):
        value = dreamLib.str(self.context, self.c_str(value))
        self.add_helpers(value)
        return value

    def init_obj(self):
        value = dreamLib.null_obj_init(self.context)
        self.add_helpers(value)
        return value

    def init_num(self, value):
        value = dreamLib.num(self.context, value)
        self.add_helpers(value)
        return value

    def init_bool(self, value):
        return dreamLib.bool_(self.context, value)

    def math_op(self, value1, value2, op):
        return dreamLib.math_op(self.context, value1, value2, self.c_str(op))

    def add(self, value1, value2):
        if hasattr(value1, "native_type"):
            if not hasattr(value2, "native_type"):
                value2 = self.dream_to_native(value2, "int")

            op = dreamLib.native_add(self.context, value1, value2)
            op.native_type = int
            return op

        if hasattr(value2, "native_type"):
            value2 = self.native_to_dream(value2)
        return dreamLib.add(self.context, value1, value2)


    def sub(self, value1, value2):
        if hasattr(value1, "native_type"):
            if not hasattr(value2, "native_type"):
                value2 = self.dream_to_native(value2, "int")

            op = dreamLib.native_sub(self.context, value1, value2)
            op.native_type = int
            return op
        if hasattr(value2, "native_type"):
            value2 = self.native_to_dream(value2)
        return dreamLib.sub(self.context, value1, value2)

    def div(self, value1, value2):
        if hasattr(value1, "native_type"):
            if not hasattr(value2, "native_type"):
                value2 = self.dream_to_native(value2, "int")
            op = dreamLib.native_div(self.context, value1, value2)
            op.native_type = int
            return op
        if hasattr(value2, "native_type"):
            value2 = self.native_to_dream(value2)
        return dreamLib.divi(self.context, value1, value2)

    def mul(self, value1, value2):
        if hasattr(value1, "native_type"):
            if not hasattr(value2, "native_type"):
                value2 = self.dream_to_native(value2, "int")
            op = dreamLib.native_mul(self.context, value1, value2)
            op.native_type = int
            return op
        if hasattr(value2, "native_type"):
            value2 = self.native_to_dream(value2)
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

    # TODO this should probably be casted @ runtime cause this isn't safe
    def dream_to_native(self, value, new_type):
        ObjPtr = LLVMBuilder.ObjPtr

        if new_type == "int":
            value = dreamLib.get_pointer_value(self.context, ObjPtr.in_dll(dreamLib, "intType"), value)
        return value

    def set_var(self, key, value, obj=None, native=False):
        if obj is None:
            obj = self.scope

        if not hasattr(obj, "natives"):
            obj.natives = {}
        elif key in obj.natives.keys():
            native = obj.natives[key]["native_type"]

        if native is not False:
            # should probably pass in the native type...
            if not hasattr(value, "native_type"):
                value = self.dream_to_native(value, native)

            obj.natives[key] = {"value": value, "native_type": native}
            return obj.natives[key]

        if hasattr(value, "native_type"):
            value = self.native_to_dream(value)
        else:
            value = self.py_to_c(value)
        new_var = dreamLib.save(self.context, obj, self.c_str(key), value)
        self.add_helpers(new_var)
        return new_var

    def reparent(self, obj, new_parent):
        return dreamLib.set_parent_c(self.context, obj, new_parent)

    def equals(self, var1, var2):
        return dreamLib.equals(self.context, var1, var2)

    def nequals(self, var1, var2):
        return dreamLib.nequals(self.context, var1, var2)

    def contains(self, var1, var2):
        return dreamLib.contains(self.context, var1, var2)

    def build(self, file_name, run=False, platform="System"):

        #dreamLib.llvm_inspect(self.context, self.c_str("lib/hopes_lib.so"))

        dreamLib.build(self.context)



        command = ""

        if platform == "System":
            os.system(f'gcc -o {file_name[:-4]} /Users/marcfervil/Documents/Programming/DreamLLVM/DreamLLVM/Build/libdreamlang.dylib lib/dream_output.o {command} ')
        elif platform == "Android":
            os.system("bash scripts/build_android.bash")

        if run:
            os.system(f"./{file_name[:-4]}")



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

        if self.platform == "Android" and key == "print":
            key = "dream_log"

        if obj is None:
            obj = self.scope

        if hasattr(obj, "natives") and key in obj.natives.keys():
            return obj.natives[key]["value"]

        #value = dreamLib.load(self.context, obj, self.c_str(key), 1)

        if from_parent is None:
            value = dreamLib.load(self.context, obj, self.c_str(key), 1)
        else:
            value = dreamLib.load(self.context, obj, self.c_str(key), from_parent)


        if key in LLVMBuilder.builtins:
            value.built_in = key

        self.add_helpers(value)
        if key == "super":
            value.is_super = True
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
        self.has_return = False
        self.builder.enter_scope(self.scope)

    def __enter__(self):
        return self

    def __exit__(self, type_, value, traceback):
        dreamLib.end_if(self.context, self.if_data, self.has_return)
        self.builder.exit_scope()


class ForBuilder:
    def __init__(self, builder, var_name, cond):
        self.builder = builder
        self.context = builder.context
        self.has_return = False

        iter_obj = self.builder.call(cond.get_var("iter"))

        cond = iter_obj.get_var("next")
        iter_func_scope = cond.get_var("@context")

        iter_func_call_scope = dreamLib.init_scope(self.context, iter_func_scope, 1)

        self.scope = dreamLib.init_scope(self.builder.context, self.builder.scope, 1)

        self.for_data = dreamLib.init_for(self.context, self.builder.c_str(var_name), self.scope, cond, iter_func_call_scope)
        self.builder.enter_scope(self.scope)


    def __enter__(self):
        return self

    def __exit__(self, type_, value, traceback):
        dreamLib.end_for(self.context, self.for_data, self.has_return)
        self.builder.exit_scope()


class CompileContext:
    def __init__(self, platform):
        self.builder = LLVMBuilder(platform)

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
            self.func_ptr = None

        def __enter__(self):
            self.func = self.builder.init_func(self.name, self.is_class, *self.args)
            self.scope = self.builder.func_scope(self.func)
            return self.builder, self.scope, self

        def __exit__(self, type, value, traceback):
            self.func_ptr = self.builder.end_func(self.func)
            #self.builder.dict(self.new_func)
            self.builder.add_helpers(self.func_ptr)

            arg_list = self.builder.call("list", *[self.builder.init_str(arg) for arg in self.args])
            self.func_ptr.set_var("args", arg_list)



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