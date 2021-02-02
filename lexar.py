ops = [",", "+", "-", "*", "/"]


class Token:

    def __init__(self, value, type=None):
        self.value = value
        self.is_literal = False
        if type is None:
            if self.value.isnumeric():
                self.type = "Number"
                self.value = int(self.value)
                self.is_literal = True
            elif self.value in ops:
                self.type = "Operator"
            elif self.value == "\n":
                self.type = "Newline"
                self.value = ""
            elif self.value[0] == '"' and self.value[-1] == '"':
                self.type = "String"
                self.value = self.value[2:-1]
                self.is_literal = True
            elif self.value[0] == '{' and self.value[-1] == '}':
                self.type = "Block"
                self.value = Tokenizer(self.value[1:-1]).tokenize()
            elif self.value[0] == '(' and self.value[-1] == ')':
                self.type = "Set"
                self.value = Tokenizer(self.value[1:-1]).tokenize()
            elif self.value == "true" or self.value == "false":
                self.type = "Boolean"
                self.value = bool(self.value)
                self.is_literal = True
            else:
                self.type = "Identifier"
        else:
            self.type = type

    def __repr__(self):
        return f"({self.type} {self.value})"


class Tokenizer:

    def __init__(self, data):
        self.data = data
        self.tokens = []
        self.token = ""

    def add_token(self, token=None):
        if token is None:
            if len(self.token.strip()) > 0:
                self.tokens.append(Token(self.token))
                self.token = ""
        else:
            self.tokens.append(Token(token))

    def tokenize(self):
        match_start_token = None
        match_end_token = None
        match_count = 0
        for char in self.data:
            if match_count == 0:
                if char == " " or char in ops:
                    self.add_token()
                    if char in ops:
                        self.add_token(char)
                    continue
                elif char == "\n":
                    self.add_token()
                    self.add_token("\n")
                    continue
                elif char == '"':
                    match_end_token = '"'
                    match_start_token = '"'
                    match_count = 1
                    self.add_token()
                elif char == '{':
                    match_end_token = '}'
                    match_start_token = '{'
                    match_count = 1
                    self.add_token()
                    continue
                elif char == '(':
                    match_end_token = ')'
                    match_start_token = '('
                    match_count = 1
                    self.add_token()
                    continue
            elif char == match_end_token:
                match_count -= 1
                if match_count == 0:
                    self.add_token(match_start_token+self.token+match_end_token)
                    self.token = ""
                    continue
            elif char == match_start_token:
                match_count += 1

            self.token += char
        self.add_token()
        return self.tokens

