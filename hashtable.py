

class HashTable:
    hash_lengh = 1000

    def __init__(self):
        self.storage = [list() for i in range(self.hash_lengh)]


    def get_hash(self, val):
        return val % self.hash_lengh


    def add(self, value):
        hash = self.get_hash(value)
        self.storage[hash].append(value)



a = HashTable()

a.add(999)
a.add(2999)
a.add(12312999)

a.add(4)
a.add(5)
a.add(1241)
a.add(12141251)
a.add(251)

print(a.storage)