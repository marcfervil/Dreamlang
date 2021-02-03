from parser import *
from lexar import *

#print("love is", true, 4, "ever")

def test(name, func):
    print(name, "Passed" if func() else "Failed")

def test_math():
    testData = '3*11-4+4-99*100/2/5-300-89-345*30'
    tokens = Tokenizer(testData).tokenize()
    result = str(Parser(tokens).get_ast())
    return eval(testData) == eval(result)

test("Math:", test_math)

testData = 'print('

tokens = Tokenizer(testData).tokenize()
result = str(Parser(tokens).get_ast())


print(result)




"""
binary{
    num1 : 5 
    op : 
}

"""