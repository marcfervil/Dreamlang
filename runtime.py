#from parser import *
import parser

from lexar import *
from parser import *


def dreamfunc(func):
    func.dreamy = True
    return func

class DreamObj:
    def __init__(self, value):
        self.value = value
        self.functions = {}

    @staticmethod
    def make_primitive(obj):
        if type(obj) is int:
            return DreamInt(obj)
        elif type(obj) is str:
            return DreamStr(obj)
        elif type(obj) is bool:
            return DreamBool(obj)

    def call(self, name, params=None):
        if params is not list:
            params = [params]
        if name in self.functions:
            return self.functions[name](params)
        elif hasattr(self, name) and hasattr(getattr(self, name), "dreamy"):
            if params is not None:
                return getattr(self, name)(*params)
            else:
                return getattr(self, name)()
        else:
            return None


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
        super.__init__(self, value)


class DreamBool(DreamObj):
    def __init__(self, value):
        super.__init__(self, value)


class Dream:
    def __init__(self, text_input):
        self.text_input = text_input
        tokens = Tokenizer(text_input).tokenize()
        self.tokens = tokens
        self.ast = parser.Parser(tokens).get_ast(node=parser.BodyNode())

    def eval(self):
        return self.ast.eval()



