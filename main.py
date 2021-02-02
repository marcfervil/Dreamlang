from parser import *
from lexar import *

#print("love is", true, 4, "ever")

testData = '1+2*3-5'
tokens = Tokenizer(testData).tokenize()

print(Parser(tokens).get_ast())
"""
binary{
    num1 : 5 
    op : 
}

"""