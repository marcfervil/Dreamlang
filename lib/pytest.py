

class three:
    def __init__(self):
        self.previous = two()

    def value(self, m):
        return (self.previous.value(1) + 1) * m

    def getPrevious(self):
        return self.previous



class two :
    def __init__(self):
        self.previous = one()

    def value(self, m):
        return (self.previous.value(1) + 1) * m

    def getPrevious(self):
        return self.previous


class one:
    def value(self, m):
        return 1 * m



number = three()
number.value(1)
number.previous.previous.value(1)
number.getPrevious().getPrevious().value(10)
#print("Three: ", )
#print("First number ", )
#print("First number times ten: ", )


