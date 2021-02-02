from parser import *
from lexar import *

#print("love is", true, 4, "ever")

testData = """10+5*2-2"""
tokens = Tokenizer(testData).tokenize()

print(Parser(tokens).get_ast())
"""
binary{
    num1 : 5 
    op : 
}

"""