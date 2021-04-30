from random import randrange

from lexar import Token
from runtime import *
from runtime import DreamObj, DreamBool


class ASTNode:

    def __init__(self):
        pass

    def visit(self, context):
        #if hasattr(self, "line"):
        #    print(f'{type(self).__name__} on line {self.line} "{self.__repr__()}"')
        context.set_line(self.line)


    def __repr__(self):
        return f"({self.__class__.__name__}) {str(self.__dict__)}"


class IdentifierNode(ASTNode):
    def __init__(self, name):
        self.name = name
        self.type = None
        #print(self.name)

    def __repr__(self):
        return self.name

    def visit(self, context):
        super().visit(context)
        return context.builder.get_var(self.name)

    def eval(self, context):
        try:
            return context.get_var(self.name)
        except KeyError:
            print(self.name, "does not exist!")
            exit()

    def assign(self, context, value):
        context.add_var(self.name, value)

    def assign_visit(self, context, value):
        if self.type is not None:
            context.native_type = self.type
            context.builder.set_var(self.name, value.visit(context), native=self.type)
            context.native_type = None
            return
        context.builder.set_var(self.name, value.visit(context))


class AssignNode(ASTNode):
    def __init__(self, var, value):
        self.var = var
        self.value = value

    def __repr__(self):

        return f'{self.var} = {str(self.value)}'

    def visit(self, context):
        super().visit(context)
        #print(self.var)
        self.var.assign_visit(context, self.value)

    def eval(self, context):
        self.var.assign(context, self.value.eval(context))


class ElementNode(ASTNode):
    def __init__(self, element, index):
        self.element = element
        self.index = index[0]

    def visit(self, context):
        super().visit(context)
        return context.builder.call(self.element.visit(context).get_var("get"), self.index.visit(context))

    def assign_visit(self, context, value):

        return context.builder.call(self.element.visit(context).get_var("set"), self.index.visit(context), value.visit(context))


class AttributeNode(ASTNode):
    def __init__(self, obj, attr):
        self.obj = obj
        self.attr = attr

    def eval(self, context):
        if type(self.obj) is AttributeNode or type(self.obj) is CallNode:
            return self.attr.eval(self.obj.eval(context))

        else:
            c = context.get_var(self.obj.name)
            #print(c.vars.keys())
            return self.attr.eval(c)

    def visit(self, context):
        super().visit(context)
        self.visited_obj = self.obj.visit(context)
        return context.builder.get_var(self.attr.name, self.visited_obj, False)

    def assign_visit(self, context, value):
        #print(value)
        return context.builder.set_var(self.attr.name, value.visit(context), self.obj.visit(context))

    def assign(self, context, value):
        if type(self.obj) is AttributeNode:
            self.attr.assign(self.obj.eval(context), value)
        else:
            self.attr.assign(context.get_var(self.obj.name), value)


class BinaryNode(ASTNode):
    def __init__(self, left, op, right):
        self.left = left
        self.op = op
        self.right = right

    def __repr__(self):
        return f"({self.left} {self.op.value} {self.right})"

    def visit(self, context):
        super().visit(context)
        left = self.left.visit(context)
        right = self.right.visit(context)

        if self.op.value == "+":
            return context.builder.add(left, right)
        elif self.op.value == "-":
            return context.builder.sub(left, right)
        elif self.op.value == "*":
            return context.builder.mul(left, right)
        elif self.op.value == "/":
            return context.builder.div(left, right)
        elif self.op.value == "is":
            return context.builder.equals(left, right)
        elif self.op.value == "is not":
            return context.builder.nequals(left, right)
        elif self.op.value == "in":
            return context.builder.contains(left, right)
        elif self.op.value in ["<", ">", ">=", "<=", "and", "or"]:
            return context.builder.math_op(left, right, self.op.value)

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
        elif self.op.value == "is not":
            result = left.call("equals", right)
            result.value = not result.value
            return result


class IfNode(ASTNode):
    def __init__(self, test, body):
        self.test = test
        self.body = Parser(body.value).get_ast(node=BodyNode())

    def __repr__(self):
        body_str = str(self.body).replace('\t', '\t\t')
        return f"if {self.test} {body_str}"

    def eval(self, context):
        if self.test.eval(context).value:
            return self.body.eval(context)

    # TODO program segfaults if theres code
    def visit(self, context):
        super().visit(context)
        with context.builder.init_if(self.test.visit(context)) as if_block:
            for node in self.body.body:
                node.visit(context)
                if type(node) in [ReturnNode, ContinueNode, BreakNode]:
                    if_block.has_return = True
                break


        #context.builder.ret(context.scope)


class ForNode(ASTNode):
    def __init__(self, var, iterator, body):
        self.var = var
        self.iterator = iterator
        self.body = Parser(body.value).get_ast(node=BodyNode())

    def visit(self, context):
        super().visit(context)
        with context.builder.init_for(self.var.value, self.iterator.visit(context)) as for_block:
            for node in self.body.body:
                node.visit(context)
                if type(node) is ReturnNode:
                    for_block.has_return = True
                    return

    def eval(self, context):
        iterator = self.iterator.eval(context)
        first = True
        loop = None
        result = context.call("next", [iterator, DreamBool(True)])

        context.add_var(self.var.value, result)


        while True:

            #print("Result",result)

            loop = self.body.eval(context)

            if loop is not None and not loop.scoped_return:
                return loop

            result = context.call("next", [iterator, DreamBool(False)])
            context.add_var(self.var.value, result)

            first = False

            if not context.call("hasnext", iterator).value:
                return loop

        return loop


class LiteralNode(ASTNode):
    def __init__(self, value):
        self.value = value

    def __repr__(self):
        if type(self.value) == str:
            return f"'{str(self.value)}'"
        return str(self.value)

    def visit(self, context):
        super().visit(context)
        if context.native_type is not None:

            native_value = context.builder.py_to_c(self.value)
            native_value.native_type = type(self.value)
            return native_value

        primitive = None
        if type(self.value) is int:
            primitive = context.builder.init_num(self.value)
        elif type(self.value) is str:
            self.value = self.value.replace("\\n", "\n")
            primitive = context.builder.init_str(self.value)
        elif type(self.value) is bool:
            primitive = context.builder.init_bool(self.value)
        elif type(self.value) is list:
            primitive = context.builder.call("list", *[item.visit(context) for item in self.value])

            primitive.vargs = self.vargs

        return primitive

    def eval(self, context):
        return DreamObj.make_primitive(self.value)


class ExportNode(ASTNode):
    def __init__(self, var):
        self.var = var

    def eval(self, context):
        var = self.var.eval(context)
        if var is not None:
            for name, value in var.vars.items():
                if name not in context.vars:
                    context.add_var(name, value)


class FuncNode(ASTNode):
    def __init__(self, name, params, body):
        self.name = name
        self.params = Parser(params.value, True).get_ast()
        self.body = Parser(body.value).get_ast(node=BodyNode())

    def call(self, *params):
        new_scope = self.context.copy()
        #new_scope = self.context
        for i, param in enumerate(self.params):
            new_scope.add_var(param.name, params[i])

        return self.body.eval(new_scope)

    def __repr__(self):
        value = f"func {self.name.value}({', '.join([identifier.name for identifier in self.params])})"
        return value

    def eval(self, context):
        self.context = context
        context.add_var(self.name.value, self.call)

    def visit(self, context):
        super().visit(context)
        args = [param.name for param in self.params]
        has_return = False

        with context.func(self.name.value, *args) as (builder, scope, new_func):
            for node in self.body.body:
                if type(node) is ReturnNode:
                    has_return = True
                node.visit(context)
            if not has_return:
                # TODO: Break in case of future (returns scope)
                context.builder.ret(context.builder.init_str("<TODO: implement undefined ref>"))

        return new_func.func_ptr


class ClassNode(ASTNode):

    def __init__(self, name, body, parent):
        self.context = None
        self.name = name
        self.parent = parent
        self.body = Parser(body.value).get_ast(node=BodyNode())

    def init(self, *params):

        class_context = self.context.copy()

        # support for 'this' var
        this_context = class_context.copy()
        this_context.parent_context = class_context
        this_context.this = True
        #class_context.add_var("this", this_context)

        init = None
        if self.body.body is not None:
            for node in self.body.body:
                node.eval(class_context)
                if type(node) is FuncNode and node.name.value == "init":
                    init = node

            if init is not None:
                init.call(*params)

        return class_context

    def eval(self, context):
        self.context = context
        context.add_var(self.name.value, self.init, True)
        return self.init

    # TODO: mark function as init during AST gen so we don't have to do 2 loops during compile time
    def get_init(self):
        for node in self.body.body:
            if type(node) is FuncNode and node.name.value == "init":
                return node

    # context.builder.ret(context.builder.init_str("<TODO: implement undefined>"))
    def visit(self, context):
        super().visit(context)
        if self.body.body is not None:
            init = self.get_init()
            args = [param.name for param in init.params] if init is not None else []
            with context.func(self.name.value+"_obj", is_class=True):

                with context.enter_scope() as obj_scope:

                    for class_node in self.body.body:
                        if not (type(class_node) is FuncNode and class_node.name.value == "init"):
                            class_node.in_class = True
                            class_node.visit(context)

                    context.builder.set_var("this", context.builder.scope)
                context.builder.ret(obj_scope)

            with context.func(self.name.value, *args):
                obj_scope_ret = context.builder.call(self.name.value + "_obj")
                og_scope = context.builder.scope
                init_scope = context.builder.init_obj()
                init_scope.reparent(obj_scope_ret)

                context.builder.enter_scope(init_scope)

                if self.parent is not None:
                    context.builder.call("inherit", obj_scope_ret, context.builder.get_var(self.parent.value), og_scope)

                context.builder.call("merge", init_scope, og_scope)

                if init is not None:
                    for node in init.body.body:
                        if type(node) is ReturnNode:
                            print("You cannot return from a constructor!")

                        node.visit(context)

                context.builder.ret(obj_scope_ret)
                context.builder.exit_scope()


class ContinueNode(ASTNode):
    def __init__(self):
        pass

    def visit(self, context):
        super().visit(context)
        context.builder.cont()


class BreakNode(ASTNode):
    def __init__(self):
        pass

    def visit(self, context):
        super().visit(context)
        context.builder.brek()


class ReturnNode(ASTNode):
    def __init__(self, value):
        self.value = value

    def eval(self, context):
        return self.value.eval(context)

    def visit(self, context):
        super().visit(context)
        return context.builder.ret(self.value.visit(context))


class CallNode(ASTNode):
    def __init__(self, caller, args):
        self.caller = caller
        self.args = Parser(args, True).get_ast()

    def __repr__(self):
        return f'{self.caller}({str(self.args)[1:-1]})'

    def visit(self, context):
        super().visit(context)
        args = [arg.visit(context) for arg in self.args]

        callee = self.caller.visit(context)

        """
        if type(self.caller) is AttributeNode:
            context.builder.enter_scope(self.caller.visited_obj)

        call_result = context.builder.call(callee, *args)

        if type(self.caller) is AttributeNode:
            context.builder.exit_scope()
        """

        call_result = context.builder.call(callee, *args)

        return call_result

    def eval(self, context):
        args = [arg.eval(context) for arg in self.args]
        return self.caller.eval(context)(*args)


control_flow = [IfNode, ForNode]


class BodyNode(ASTNode):
    def __init__(self, body=None):
        self.body = body
        if self.body is None:
            self.body = []

    def __repr__(self):
        str_repr = ":\n"
        for node in self.body:
            str_repr += f"\t{node}\n"
        return str_repr

    def visit(self, context):
        super().visit(context)
        for node in self.body:
            result = node.visit(context)

    def eval(self, context):

        scoped_context = context.copy()

        if self.body is None:
            return None
        for node in self.body:

            result = node.eval(scoped_context)

            if type(node) is ReturnNode:
                return result

            elif result is not None and type(node) in control_flow and not result.scoped_return:
                return result
        scoped_context.scoped_return = True

        # return result  <-- break in case people can't handle the future
        return scoped_context

# TODO make precedence not decimal lol

math_ops = {
    "==": 1,
    "is": 1,
    "is not": 1,
    "in": 1,
    "and": 0.5,
    "or": 0.5,
    ">": 1.5,
    ">=": 1.5,
    "<=": 1.5,
    "<": 1.5,
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
        self.token = ""
        self.parse_as_list = parse_as_list
        self.current_line = ""
        #if parse_as_list:
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
                    body = BodyNode(program_body)
                    #body.line = self.current_line
                    return body

        vargs = False
        if token.has("Operator", "~"):
            token = self.eat_token()
            vargs = True

        # if statement
        if token.has("Identifier", "if"):
            test = self.get_ast()
            body = self.eat_token()
            return IfNode(test, body)

        # for loop
        if token.has("Identifier", "for"):
            var = self.eat_token()
            # this is the word in
            discard = self.eat_token()
            test = self.get_ast()
            body = self.eat_token()
            return ForNode(var, test, body)

        if token.has("Identifier", "export"):
            return ExportNode(self.get_ast())

        if token.has("Identifier", "func"):
            name = self.eat_token() if not self.peak_token().has("Set") else Token("lambda_line_"+str(token.line), token.tokenizer)
            params = self.eat_token()
            if len(self.tokens) == 0 or self.peak_token().type == "Newline":
                body = Token("{}", token.tokenizer)
            elif self.peak_token().type == "Block":
                body = self.eat_token()
               #print(name.value,"=",body)
            return FuncNode(name, params, body)

        if token.has("Identifier", "class"):
            name = self.eat_token()
            parent = None
            if self.peak_token().has("Identifier", "extends"):
                self.eat_token()
                parent = self.eat_token()
            body = self.eat_token()
            return ClassNode(name, body, parent)

        if token.has("Identifier", "return"):
            value = self.get_ast()
            return ReturnNode(value)

        if token.has("Identifier", "continue"):
            return ContinueNode()

        if token.has("Identifier", "break"):
            return BreakNode()

        # return the identifier
        if token.type == "Identifier":
            primitives = ["int", "str", "bool", "var"]
            # if the parent node is a primitive type, then assign a type to the identifier
            value = IdentifierNode(token.value)
            if parent_type is IdentifierNode and node.name != "var" and node.name in primitives:
                value.type = node.name
                return value

            return value

        # if you're parsing math and you've hit a comma - you've gone too far
        if prec > 0 and token.has("Operator", ","):
            # returning 0 essentially stops the evaluation and returns the precedence to it's previous state
            return 0

        # handles math operations
        if token.type == "Operator" and token.value in math_ops:
            # if there is no node, that means you are trying to negate an identifier ex: a = -b
            if node is None:
                # TODO: replace with UnaryNode @ some point for performance
                new_node = BinaryNode(LiteralNode(0), token, self.get_ast(math_ops[token.value]))
                return new_node

            if math_ops[token.value] > prec:
                return BinaryNode(node, token, self.get_ast(math_ops[token.value]))
            elif math_ops[token.value] == prec or math_ops[token.value] < prec:
                # if you're parsing math and you hit an operator w/ a lower precedence - you've gone too far
                return 0

        # variable assignment
        if token.has("Operator", "="):
            value = self.get_ast()
            return AssignNode(node, value)

        # +=, -=, *=, /= assignment operator
        if token.has("Operator",  ["+=", "-=", "*=", "/="]):
            op = Token(token.value[0], tokenizer=token.tokenizer)
            binary_node = BinaryNode(node, op, self.get_ast())
            binary_node.line = token.line
            return AssignNode(node, binary_node)

        # attribute assignment ex: dog.name
        if token.has("Operator", "."):
            attribute = self.eat_token()
            return AttributeNode(node, IdentifierNode(attribute.value))

        # literals like strings, ints, bools
        if token.is_literal:
            return LiteralNode(token.value)

        # index node - var[i] or var = [1, 2, 3]
        if token.type == "Index":
            value = Parser(token.value, parse_as_list=True).get_ast()

            if not (parent_type in [IdentifierNode, AttributeNode, ElementNode]):
                literal = LiteralNode(value)
                literal.vargs = vargs
                return literal
            else:
                return ElementNode(node, value)

        # function call
        if token.type == "Set":
            if parent_type == IdentifierNode or parent_type == AttributeNode or parent_type == ClassNode or parent_type == CallNode:
                return CallNode(node, token.value)
            else:
                # precedence ex: (5+5) * 2
                return Parser(token.value).get_ast()

        return None

    def eat_token(self):
        token = self.tokens.pop(0)
        #self.current_line = token.line
        #print(f"{token} on line {token.line}")
        # the "->" operator returns a body token that consists of all the tokens until newline
        if token.has("Operator", "->") or token.has("Operator", "=>"):
            expression = []
            if token.value == "=>":
                expression.append(Token("return", token.tokenizer))
            while True:
                expression_token = self.eat_token()
                expression.append(expression_token)
                if expression_token.has("Newline") or len(self.tokens) == 0:
                    if len(self.tokens) > 0:
                        self.tokens.insert(0, expression_token)
                    return Token(expression, token.tokenizer, "Block")

            return Token(expression, token.tokenizer, "Block")
        return token

    def peak_token(self):

        token = self.tokens[0]

        # if the "->" operator is used just return an empty block because it's the same thing
        if token.has("Operator", "->") or token.has("Operator", "=>"):
            return Token([], token.tokenizer, "Block")
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

            if current_node is not None and isinstance(current_node, ASTNode):
                current_node.line = token.line

            """
            if self.parse_as_list and self.token_is(token, "Operator", ","):
                if prec == 0:
                    #node.line = self.current_line
                    self.nodes.append(node)
                    node = None
                    continue
            """
            if self.token_is(token, "Operator", ","):
                if prec == 0:
                    #if type(node) is not list:
                    if not self.parse_as_list:
                        self.parse_as_list = True
                        
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
