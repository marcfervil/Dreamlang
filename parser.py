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
    "+": 0,
    "-": 0,
    "*": 1,
    "/": 1
}


class Parser:

    def __init__(self, tokens, parse_as_list=False, prec=0):
        self.tokens = tokens
        self.root_node = ProgramNode()
        self.node = None
        self.prec = prec
        self.parse_as_list = parse_as_list
        if parse_as_list:
            self.nodes = []

    def token_to_node(self, token):
        parent_type = type(self.node)
        if token.type == "Newline":
            return None
        if token.type == "Identifier":
            return IdentifierNode(token.value)

        # math:
        # append literal to right side of binary operation node
        if parent_type == BinaryNode and token.is_literal:
            node = self.node
            node.right = LiteralNode(token.value)
            return node

        # create binary operation node
        if token.type == "Operator" and token.value in math_ops:
            return BinaryNode(self.node, token, None)

        # literals like strings, ints, bools
        if token.is_literal:
            return LiteralNode(token.value)

        # function call
        if token.type == "Set" and parent_type == IdentifierNode:
            return CallNode(self.node, token.value)

    def eat_token(self):
        token = self.tokens.pop(0)

        return token

    def token_is(self, token, token_type, value):
        return token.type == token_type and token.value == value

    def get_ast(self):
        while len(self.tokens) > 0:
            token = self.eat_token()

            if token.type == "Newline":
                continue
            elif self.token_is(token, "Operator", ",") and self.parse_as_list:
                self.nodes.append(self.node)
                self.node = None
                continue

            current_node = self.token_to_node(token)
            self.node = current_node
            """
            if self.node is None:
                self.node = current_node
            elif type(current_node) == CallNode:
                self.node = current_node
            """

        if self.parse_as_list:

            self.nodes.append(self.node)
            self.node = self.nodes

        return self.node
