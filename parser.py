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

    def __init__(self, tokens, parse_as_list=False):
        self.tokens = tokens
        self.root_node = ProgramNode()
        self.node = None

        self.parse_as_list = parse_as_list
        if parse_as_list:
            self.nodes = []

    def token_to_node(self, token):
        parent_type = type(self.node)
        node = None

        if token.type == "Newline":
            return None
        if token.type == "Identifier":
            node = IdentifierNode(token.value)


        # create binary operation node
        """
        if token.type == "Operator" and token.value in math_ops:
            if math_ops[token.value] == self.prec:
                return BinaryNode(self.node, token, None)
            elif math_ops[token.value] > self.prec:
                return self.get_ast(1)
        """

        # literals like strings, ints, bools
        if token.is_literal:
            node = LiteralNode(token.value)

        """
        # math:
        # append literal to right side of binary operation node
        if parent_type == BinaryNode and token.is_literal:
            node = self.node
            node.right = LiteralNode(token.value)
        """

        if parent_type == BinaryNode:
            root_node = self.node
            root_node.right = node
            node = root_node

        if len(self.tokens) > 0:
            next_token = self.peak_token()
            if next_token.has("Operator") and next_token.value in math_ops:
                if math_ops[next_token.value] == self.prec:
                    node = BinaryNode(node, self.eat_token(), None)
                elif math_ops[next_token.value] > self.prec:
                    new_node = node
                    op = self.eat_token()
                    new_node.right = BinaryNode(new_node.right, op, self.get_ast(1))
                    print(new_node)
                    self.prec = 0
                    node = new_node


        # function call
        if token.type == "Set" and parent_type == IdentifierNode:
            node = CallNode(self.node, token.value)

        return node

    def eat_token(self):
        token = self.tokens.pop(0)

        return token

    def peak_token(self):

        token = self.tokens[0]

        return token

    def token_is(self, token, token_type, value):
        return token.type == token_type and token.value == value

    def get_ast(self, prec = 0):
        self.node = None
        self.prec = prec
        while len(self.tokens) > 0:
            token = self.eat_token()

            if token.type == "Newline":
                continue
            elif self.parse_as_list and self.token_is(token, "Operator", ","):
                self.nodes.append(self.node)
                self.node = None
                continue
            elif prec > 0:
                if token.has("Operator") and token.value in math_ops and math_ops[token.value] < prec:
                    print("dsd", self.node)


                    self.tokens.insert(0, token)
                    print(self.tokens)
                    return self.node

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
