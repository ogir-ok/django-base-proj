

class Elem:
    next = None
    value = None

    def __init__(self, value):
        self.value = value

    def __str__(self):
        return f'Elem<{self.value}>'

    def insert(self, elem):
        elem.next = self.next
        self.next = elem



class LinkedList:
    def __init__(self):
        self.head = None

    def add(self, elem):
        elem.next = self.head
        self.head = elem

    def find(self, i):
        elem = self.head

        while elem.next is not None:
            if elem.value == i:
                return elem
            elem = elem.next


        return False

    def find_tail(self):
        elem = self.head
        while elem.next is not None:
            elem = elem.next
        return elem

    def reverse(self):
        initial_tail = self.find_tail()
        tail = initial_tail
        while tail:
            tail = self.find_tail()
            previous = self.find_previous(tail)
            tail.next = previous
            if previous:
                previous.next = None
            else:
                break

        self.head = initial_tail

    def find_previous(self, current_elem):
        elem = self.head
        if elem is None:
            return None
        while elem.next is not None:
            if elem.next is current_elem:
                return elem
            elem = elem.next


    def __str__(self):
        res = ''
        elem = self.head
        while elem.next is not None:
            res += f'{elem} -> '
            elem = elem.next
        res += str(elem)
        return res


my_list = LinkedList()

my_list.add(Elem(123))
my_list.add(Elem(1))
my_list.add(Elem(3))
elem5 = Elem(5)
my_list.add(elem5)
my_list.add(Elem(21))
my_list.add(Elem(44))

print(my_list)

elem5.insert(Elem(13))
print(my_list)

print(my_list.find(22))
e21 = my_list.find(21)


print(my_list.find_previous(e21))

print('Tail:', my_list.find_tail())

my_list.reverse()
print(my_list)
