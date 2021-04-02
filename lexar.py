ops = [",", "+", "-", "*", "/",  "=", "==", "is", "is not", "in", ".", "->", ">", "=>"]
special_chars = "!#%^&*,-+=/.>="


class Token:

    def __init__(self, value, tokenizer, type=None, line=0):
        self.value = value
        self.is_literal = False
        self.line = line
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

                new_tokenizer = Tokenizer(self.value[1:-1], tokenizer.line)

                #print("LINEOG", line)
                self.value = new_tokenizer.tokenize()
                tokenizer.line = new_tokenizer.line - 1
                #print("APPLE", new_tokenizer.line, tokenizer.line)

            elif self.value[0] == '(' and self.value[-1] == ')':
                self.type = "Set"
                self.value = Tokenizer(self.value[1:-1], tokenizer.line).tokenize()
            elif self.value == "true" or self.value == "false":
                self.type = "Boolean"
                self.value = self.value == "true"
                self.is_literal = True
            else:
                self.type = "Identifier"
        else:
            self.type = type

    def __repr__(self):
        return f"({self.type} {self.value})"

    def has(self, type, value=None):
        return (value is None and self.type == type) or (self.value == value and self.type == type)


class Tokenizer:

    def __init__(self, data, line=1):
        self.data = data
        self.tokens = []
        self.token = ""
        self.line = line
        self.line_text = ""
        self.has_linebreak = False

    def add_token(self, token=None):

        if token is None:
            if len(self.token.strip()) > 0:
                new_token = Token(self.token, self, line=self.line)

                # ???? this seems wrong but i'm too scared to delete it @ this point
                if self.token[0] == "#":
                    self.tokens.append(new_token)

                # TODO Make dynamic so that other operators can "merge"
                if new_token.value == "not" and self.tokens[-1].has("Operator", "is"):
                    self.tokens[-1].value = "is not"
                    self.token = ""
                    return

                elif new_token.value == ">" and (self.get(-1).has("Operator", "-") or self.get(-1).has("Operator", "=")):
                    self.tokens[-1].value += new_token.value
                    self.token = ""
                    return

                elif new_token.has("Number"):
                    if self.get(-1).has("Operator", "-") and (self.get(-2).has("Operator") or self.get(-2).has("None")):
                        self.tokens.pop()
                        new_token.value *= -1

                self.tokens.append(new_token)
                self.token = ""
                #print("added", new_token, "to line ", new_token.line)
        else:
            if token[0] == "`" and token[-1] == "`":
                return
            new_token = Token(token, self, line=self.line)
            #print("added", new_token, new_token.line)
            self.tokens.append(new_token)
        if self.has_linebreak:
            self.linebreak()

    def get(self, index):
        if abs(index) > len(self.tokens):
            return Token("None", self, "None")
        return self.tokens[index]

    def newline(self):

        if len(self.tokens) > 0 and not self.tokens[-1].has("Newline"):
            self.add_token("\n")

    def linebreak(self):
        self.line += 1
        # self.tokens.append(Token(self.line, self, "LineBreak"))
        # print(f"Line #{self.line-1}")
        self.line_text = ""
        self.has_linebreak = False

    def tokenize(self):
        match_start_token = None
        match_end_token = None
        match_count = 0
        for char in self.data:
            self.line_text += char

            if char == "\n":
                self.has_linebreak = True

            if match_count == 0:

                if char == '#':
                    match_end_token = '\n'
                    match_start_token = ""
                    match_count = 1

                    self.add_token()
                    self.token = "#"
                    continue
                elif char == '`':
                    match_end_token = '`'
                    match_start_token = '`'
                    match_count = 1
                    self.add_token()
                elif char == " " or char in special_chars:
                    self.add_token()
                    if len(self.tokens) > 0 and str(self.tokens[-1].value) + char in ops:
                        self.add_token(str(self.tokens.pop(-1).value) + char)
                    elif char in ops:
                        self.add_token(char)
                    continue
                elif char == "\n" or char == ";":

                    if len(self.tokens) > 0 and not self.tokens[-1].has("Newline"):
                        self.add_token()
                        self.add_token("\n")
                    else:
                        self.linebreak()

                    continue
                elif char == '"':
                    match_end_token = '"'
                    match_start_token = '"'
                    match_count = 1
                    self.add_token()

                elif char == '{':
                    if self.tokens[-1].has("Newline"):

                        self.tokens.pop(-1)

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
                    # comments should be the only token match with an empty string starting node
                    if match_start_token == "":
                        self.newline()
                    else:
                        self.add_token(match_start_token + self.token + match_end_token)

                    self.token = ""
                    continue
            elif char == match_start_token:
                match_count += 1

            self.token += char
        if not match_count == 0:
            if match_start_token == "":
                self.newline()
        self.add_token()
        return self.tokens

