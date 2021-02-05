from random import randrange

from lexar import Token
from runtime import *
from runtime import DreamObj


class ASTNode:

    def __init__(self):
        pass

    def __repr__(self):
        return f"({self.__class__.__name__}) {str(self.__dict__)}"


class IdentifierNode(ASTNode):
    def __init__(self, name):
        self.name = name

    def __repr__(self):

        return self.name

    def eval(self, context):
        try:

            #return context.vars[self.name]
            return context.get_var(self.name)
        except KeyError:
            print(self.name, "does not exist!")
            exit()

    def assign(self, context, value):
        #context.vars[self.name] = value
        context.add_var(self.name, value)


class AssignNode(ASTNode):
    def __init__(self, var, value):
        self.var = var
        self.value = value

    def __repr__(self):
        return f'{self.var} = {str(self.value)}'

    def eval(self, context):
        self.var.assign(context, self.value.eval(context))


class AttributeNode(ASTNode):
    def __init__(self, obj, attr):
        self.obj = obj
        self.attr = attr

    def eval(self, context):
        if type(self.obj) is AttributeNode or type(self.obj) is CallNode:
            return self.attr.eval(self.obj.eval(context))
        else:
            return self.attr.eval(context.vars[self.obj.name])

    def assign(self, context, value):
        if type(self.obj) is AttributeNode:
            self.attr.assign(self.obj.eval(context), value)
        else:
            self.attr.assign(context.vars[self.obj.name], value)


class BinaryNode(ASTNode):
    def __init__(self, left, op, right):
        self.left = left
        self.op = op
        self.right = right

    def __repr__(self):
        return f"({self.left} {self.op.value} {self.right})"

    def eval(self, context):
        left = self.left.eval(context)
        right = self.right.eval(context)
        if self.op.value == "+":
            return left.call("add", right)
        elif self.op.value == "-":
            return left.call("subtract", right)
        elif self.op.value == "*":
            return left.call("multiply", right)
        elif self.op.value == "/":
            return left.call("divide", right)
        elif self.op.value == "is":
            return left.call("equals", right)


class IfNode(ASTNode):
    def __init__(self, test, body):
        self.test = test
        self.body = Parser(body.value).get_ast(node = BodyNode())

    def __repr__(self):
        body_str = str(self.body).replace('\t', '\t\t')
        return f"if {self.test} {body_str}"

    def eval(self, context):
        if self.test.eval(context).value:
            return self.body.eval(context)


class LiteralNode(ASTNode):
    def __init__(self, value):
        self.value = value

    def __repr__(self):
        if type(self.value) == str:
            return f"'{str(self.value)}'"
        return str(self.value)

    def eval(self, context):
        return DreamObj.make_primitive(self.value)


class ExportNode(ASTNode):
    def __init__(self, var):
        self.var = var

    def eval(self, context):
        var = self.var.eval(context)
        if var is not None:
            for name, value in var.vars.items():
                context.add_var(name, value)


class FuncNode(ASTNode):
    def __init__(self, name, params, body):
        self.name = name
        self.params = Parser(params.value, True).get_ast()
        self.body = Parser(body.value).get_ast(node=BodyNode())

    def call(self, *params):
        new_scope = self.context.copy()
        for i, param in enumerate(self.params):
            new_scope.add_var(param.name, params[i])
        return self.body.eval(new_scope)

    def eval(self, context):
        self.context = context
        context.vars[self.name.value] = self.call


class ClassNode(ASTNode):
    def __init__(self, name, body):
        self.name = name
        self.body = Parser(body.value).get_ast(node=BodyNode())

    def init(self, *params):
        class_context = self.context.copy()

        # support for 'this' var
        this_context = class_context.copy()
        this_context.parent_context = class_context
        this_context.this = True
        class_context.add_var("this", this_context)

        init = None
        for node in self.body.body:
            node.eval(class_context)
            if type(node) is FuncNode and node.name.value == "init":
                init = node

        if init is not None:
            init.call(*params)

        return class_context

    def eval(self, context):
        self.context = context
        context.vars[self.name.value] = self.init
        return self.init


class ReturnNode(ASTNode):
    def __init__(self, value):
        self.value = value

    def eval(self, context):
        return self.value.eval(context)


class CallNode(ASTNode):
    def __init__(self, caller, args):
        self.caller = caller
        self.args = Parser(args, True).get_ast()

    def __repr__(self):
        return f'{self.caller}({str(self.args)[1:-1]})'

    def eval(self, context):

        args = [arg.eval(context) for arg in self.args]

        #print("call",self.caller.eval(context)(*args))
        return self.caller.eval(context)(*args)


class BodyNode(ASTNode):
    def __init__(self, body=None):

        self.body = body

    def __repr__(self):
        str_repr = ":\n"
        for node in self.body:
            str_repr += f"\t{node}\n"
        return str_repr

    def eval(self, context):
        scoped_context = context.copy()
        if self.body is None: return None
        for node in self.body:

            result = node.eval(scoped_context)

            if type(node) is ReturnNode:
                return result
            elif result is not None and type(node) is IfNode and not result.scoped_return:
                return result
        scoped_context.scoped_return = True

        return scoped_context
        #return result


math_ops = {
    "==": 1,
    "is": 1,
    "+": 2,
    "-": 2,
    "*": 3,
    "/": 3,

}

class Parser:

    def __init__(self, tokens, parse_as_list=False):
        self.tokens = tokens
        self.root_node = BodyNode()
        self.prec_stack = []
        self.parse_as_list = parse_as_list
        if parse_as_list:
            self.nodes = []

    def token_to_node(self, token, node, prec):
        parent_type = type(node)

        # if a program node is passed in that means it's going to be a multiline affair
        # collect all of the lines and turn them into an AST
        if parent_type is BodyNode:
            self.tokens.insert(0, token)
            program_body = []
            while True:
                next_node = self.get_ast()
                if next_node is not None:
                    program_body.append(next_node)
                else:
                    return BodyNode(program_body)

        if token.has("Identifier", "if"):
            test = self.get_ast()
            body = self.eat_token()
            return IfNode(test, body)

        if token.has("Identifier", "export"):
            return ExportNode(self.get_ast())

        if token.has("Identifier", "func"):
            name = self.eat_token()
            params = self.eat_token()
            if len(self.tokens) == 0 or self.peak_token().type == "Newline":
                body = Token("{}")
            elif self.peak_token().type == "Block":
                body = self.eat_token()

            return FuncNode(name, params, body)

        if token.has("Identifier", "class"):
            name = self.eat_token()
            body = self.eat_token()
            return ClassNode(name, body)

        if token.has("Identifier", "return"):
            value = self.get_ast()
            return ReturnNode(value)

        # just return the identifier
        if token.type == "Identifier":
            return IdentifierNode(token.value)

        # if you're parsing math and you've hit a comma - you've gone too far
        if prec > 0 and token.has("Operator", ","):
            # returning 0 essentially stops the evaluation and returns the precedence to it's previous state
            return 0

        # handles math operations
        if token.type == "Operator" and token.value in math_ops:
            if math_ops[token.value] > prec:
                return BinaryNode(node, token, self.get_ast(math_ops[token.value]))
            elif math_ops[token.value] == prec or math_ops[token.value] < prec:
                # if you're parsing math and you hit an operator w/ a lower precedence - you've gone too far
                return 0

        # variable assignment
        if token.has("Operator", "="):
            value = self.get_ast()
            return AssignNode(node, value)

        # attribute assignment ex: dog.name
        if token.has("Operator", "."):
            attribute = self.eat_token()
            return AttributeNode(node, IdentifierNode(attribute.value))

        # literals like strings, ints, bools
        if token.is_literal:
            return LiteralNode(token.value)

        # function call
        if token.type == "Set":
            if parent_type == IdentifierNode or parent_type == AttributeNode or parent_type == ClassNode:
                return CallNode(node, token.value)
            else:
                # precedence ex: (5+5) * 2
                return Parser(token.value).get_ast()


        return None

    def eat_token(self):
        token = self.tokens.pop(0)

        return token

    def peak_token(self):

        token = self.tokens[0]

        return token

    def token_is(self, token, token_type, value):
        return token.type == token_type and token.value == value

    def get_ast(self, prec=0, node=None):
        while len(self.tokens) > 0:

            token = self.eat_token()

            if token.type == "Newline" or token.type == "Block":
                if node is not None:
                    self.tokens.insert(0, token)
                    return node
                else:
                    continue

            current_node = self.token_to_node(token, node, prec)

            if self.parse_as_list and self.token_is(token, "Operator", ","):
                if prec == 0:
                    self.nodes.append(node)
                    node = None
                    continue

            if prec > 0 and (current_node == 0):
                self.tokens.insert(0, token)
                return node

            node = current_node

        if self.parse_as_list and prec == 0:
            self.nodes.append(node)
            node = self.nodes
            if len(node) == 1 and node[0] is None:
                node = []
        return node
