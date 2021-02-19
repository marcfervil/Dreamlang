
from ctypes import *

dreamLib = cdll.LoadLibrary('./lib/dream.so')

"""
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
"""

class LLVMBuilder:
    ObjPtr = POINTER(c_char)

    def __init__(self):
        self.map_bindings()
        self.context = dreamLib.llvm_init()

    def run(self):
        dreamLib.llvm_run(self.context, 1)

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
        bind(dreamLib.int_type, ObjPtr)
        bind(dreamLib.get_value, ObjPtr)

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

        dreamLib.call_standard_c(self.context, self.c_str(name), len(c_args), c_args)

    def init_str(self, value):
        return dreamLib.str(self.context, self.c_str(value))

    def init_num(self, value):
        return dreamLib.num(self.context, value)

    def add(self, value1, value2):
        return dreamLib.add(self.context, value1, value2)

    def ret(self, value):
        return dreamLib.retVal(self.context, self.py_to_c(value))