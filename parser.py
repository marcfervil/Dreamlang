from lexar import Token


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


class BinaryNode(ASTNode):
    def __init__(self, left, op, right):
        self.left = left
        self.op = op
        self.right = right

    def __repr__(self):

        return f"({self.left} {self.op.value} {self.right})"

    def eval(self):
        return 0

class IfNode(ASTNode):
    def __init__(self, test):
        self.test = test

class LiteralNode(ASTNode):
    def __init__(self, value):
        self.value = value

    def __repr__(self):

        if type(self.value) == str:
            return f"'{str(self.value)}'"
        return str(self.value)


class CallNode(ASTNode):
    def __init__(self, caller, args):
        self.caller = caller
        self.args = Parser(args, True).get_ast()



class ProgramNode(ASTNode):
    def __init__(self):
        self.body = []


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
        self.root_node = ProgramNode()
        self.prec_stack = []
        self.parse_as_list = parse_as_list
        if parse_as_list:
            self.nodes = []

    def token_to_node(self, token, node, prec):
        parent_type = type(node)


        if token.type == "Newline":
            return None
        if token.type == "Identifier":
            return IdentifierNode(token.value)



        if prec > 0 and (token.has("Operator", ",")  ):
            return 0

        if token.type == "Operator" and token.value in math_ops:
            if math_ops[token.value] > prec:
                return BinaryNode(node, token, self.get_ast(math_ops[token.value]))
            elif math_ops[token.value] == prec or math_ops[token.value] < prec:
                # returning 0 essentially stops the evaluation and returns the precidence to it's previous state
                return 0

        # literals like strings, ints, bools
        if token.is_literal:

            return LiteralNode(token.value)
            #self.prec_stack.append(node)

        # function call
        if token.type == "Set" and parent_type == IdentifierNode:
            return CallNode(node, token.value)

        if token.has("Identifier", "if"):
            return None

        return None

    def eat_token(self):
        token = self.tokens.pop(0)

        return token

    def peak_token(self):

        token = self.tokens[0]

        return token

    def token_is(self, token, token_type, value):
        return token.type == token_type and token.value == value

    def get_ast(self, prec=0):
        node = None
        while len(self.tokens) > 0:
            token = self.eat_token()

            if token.type == "Newline":
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
