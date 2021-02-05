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
        self.vars = {}

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
        copy_obj.vars = copy.deepcopy(self.vars)
        copy_obj.value = copy.deepcopy(self.value)
        return copy_obj

    def call(self, name, params=None):
        if params is not list:
            params = [params]
        if name in self.vars:
            return self.vars[name](params)
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

    def add_var(self, name, value):
        self.vars[name] = value


class DreamInt(DreamObj):
    def __init__(self, value):
        super().__init__(value)

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
        print(obj.__dict__)

    def eval(self):
        return self.ast.eval(self.context)



