#from parser import *
import parser

from lexar import *
from parser import *
import copy


def dreamfunc(func):
    func.dreamy = True
    return func



class DreamObj:
    def __init__(self, value=None):
        self.value = value
        self.vars = {"classes":[]}
        self.parent_context = None
        self.this = False
        self.primitive = False
        self.scoped_return = False
        #self.type = None
        self.classes = {}


    @staticmethod
    def make_primitive(obj):
        if type(obj) is int:
            return DreamInt(obj)
        elif type(obj) is str:
            return DreamStr(obj)
        elif type(obj) is bool:
            return DreamBool(obj)

    def copy(self):
        copy_obj = DreamObj()
        # we want a copy of primitives and a ref to actual objects

        for name, value in self.vars.items():
            if name=="x":
                pass
            if type(value) is DreamObj and value.primitive:
                #copy_obj.vars[name] = copy.deepcopy(value)
                copy_obj.add_var(name, copy.deepcopy(value))
            else:

                #copy_obj.vars[name] = value
                copy_obj.add_var(name, value)


        copy_obj.value = self.value
        copy_obj.parent_context = self
        return copy_obj


    def call(self, name, params=None):
        if params is not list:
            params = [params]
        if name in self.vars:
            return self.get_var(name)(*params)
        elif hasattr(self, name) and hasattr(getattr(self, name), "dreamy"):
            if params is not None:
                return getattr(self, name)(*params)
            else:
                return getattr(self, name)()
        else:
            return None


        
        


    @dreamfunc
    def equals(self, other):
        return DreamBool(other.value == self.value)

    def get_var(self, name):

        #if name == "x":
            #print("got X ",self.parent_context is not None and name in self.parent_context.vars)

        if self.parent_context is not None and name in self.parent_context.vars:
            return self.parent_context.get_var(name)

        if name not in self.vars:
            return Undefined()
        var = self.vars[name]

        if name in self.vars["classes"]:
            return copy.deepcopy(var)

        return var

    def add_var(self, name, value, var_type="Object"):

        if self.this or (self.parent_context is not None and name in self.parent_context.vars):
            self.parent_context.add_var(name, value)

        else:
            if var_type == "Class":
                self.vars["classes"].append(name)
            self.vars[name] = value


class Undefined(DreamObj):
    def __init__(self):
        super().__init__(None)

    def __repr__(self):
        return "[Undefined]"


class DreamInt(DreamObj):
    def __init__(self, value):
        super().__init__(value)
        self.primitive = True

    def __repr__(self):
        return str(self.value)

    @dreamfunc
    def add(self, num):
        return DreamInt(self.value + num.value)

    @dreamfunc
    def subtract(self, num):
        return DreamInt(self.value - num.value)

    @dreamfunc
    def multiply(self, num):
        return DreamInt(self.value * num.value)

    @dreamfunc
    def divide(self, num):
        return DreamInt(self.value / num.value)


class DreamStr(DreamObj):
    def __init__(self, value):
        super().__init__(value)
        self.primitive = True

    def __repr__(self):
        return str(self.value)

    @dreamfunc
    def add(self, string):
        return DreamStr(self.value + string.value)

    @dreamfunc
    def subtract(self, string):
        return DreamStr(self.value.replace(string.value, ""))


class DreamBool(DreamObj):
    def __init__(self, value):
        super().__init__(value)
        self.primitive = True

    def __repr__(self):
        return str(self.value)

class Dream:
    def __init__(self, text_input):
        self.text_input = text_input
        tokens = Tokenizer(text_input).tokenize()

        self.tokens = copy.deepcopy(tokens)
        self.ast = parser.Parser(tokens).get_ast(node=parser.BodyNode())
        self.context = self.get_context()

    def get_context(self):
        dream_globals = DreamObj()
        dream_globals.vars["print"] = print
        dream_globals.vars["dict"] = self.get_dict
        return dream_globals

    def get_dict(self, obj):
        print("[RUNTIME DICT]:",obj.vars.keys(), "[PARENT]", obj.parent_context.vars.keys())

    def eval(self):
        return self.ast.eval(self.context)



