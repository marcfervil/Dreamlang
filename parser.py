from random import randrange

from lexar import Token
from runtime import *


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
        return context.vars[self.name]

class BinaryNode(ASTNode):
    def __init__(self, left, op, right):
        self.left = left
        self.op = op
        self.right = right

    def __repr__(self):
        return f"({self.left} {self.op.value} {self.right})"

    def eval(self, context):
        if self.op.value == "+":
            return self.left.eval(context).call("add", self.right.eval(context))
        elif self.op.value == "-":
            return self.left.eval(context).call("subtract", self.right.eval(context))
        elif self.op.value == "*":
            return self.left.eval(context).call("multiply", self.right.eval(context))
        elif self.op.value == "/":
            return self.left.eval(context).call("divide", self.right.eval(context))

class IfNode(ASTNode):
    def __init__(self, test, body):
        self.test = test
        self.body = Parser(body.value).get_ast(node = BodyNode())

    def __repr__(self):
        body_str = str(self.body).replace('\t', '\t\t')
        return f"if {self.test} {body_str}"


class LiteralNode(ASTNode):
    def __init__(self, value):
        self.value = value

    def __repr__(self):
        if type(self.value) == str:
            return f"'{str(self.value)}'"
        return str(self.value)

    def eval(self, context):
        return DreamObj.make_primitive(self.value)


class AssignNode(ASTNode):
    def __init__(self, var, value):
        self.var = var
        self.value = value

    def __repr__(self):
        return f'{self.var} = {str(self.value)}'


class CallNode(ASTNode):
    def __init__(self, caller, args):
        self.caller = caller
        self.args = Parser(args, True).get_ast()

    def __repr__(self):
        return f'{self.caller}({str(self.args)[1:-1]})'

    def eval(self, context):
        args = [arg.eval(context) for arg in self.args]
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

        for node in self.body:
            result = node.eval(context)
        return result


math_ops = {
    "==": 1,
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

        # literals like strings, ints, bools
        if token.is_literal:
            return LiteralNode(token.value)

        # function call
        if token.type == "Set" and parent_type == IdentifierNode:
            return CallNode(node, token.value)



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

        return node
