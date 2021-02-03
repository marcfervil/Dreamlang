from parser import *
from lexar import *

#print("love is", true, 4, "ever")

testData = 'print("love is", true, 4, "ever")'



tokens = Tokenizer(testData).tokenize()
result = str(Parser(tokens).get_ast())



print(result)

"""
print("----------------")
print(eval(testData))
print(eval(result))
"""

"""
binary{
    num1 : 5 
    op : 
}

"""