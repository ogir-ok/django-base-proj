# Python Interview
## Python

- What's python?
- Why you love python?
- Mutable/Immutable

### What datatypes can be keys in dict
https://pythonz.net/references/named/object.__hash__/

```
def __hash__
```

### MRO
https://makina-corpus.com/python/python-tutorial-understanding-python-mro-class-search-path

### decorator
```
from functools import wraps

def adds3(f):
    @wraps
    def wrapper(*args, **kwars):
       return f(*args, **kwargs) + 3
    return wrapper
```

### context manager
https://book.pythontips.com/en/latest/context_managers.html
```
with open('filename', 'r') as f:
    f.readlines()
    raise KeyError


try:
    f = open('filename', 'r')
    f.readlines()
    raise KeyError
finally:
    f.close()
```

### generator / iterator
https://stackoverflow.com/questions/2776829/difference-between-pythons-generators-and-iterators

### GIL
Mutex - mutual exclusion
CPU bound / IO bound operation


### Asyncio
async / await
https://docs.python.org/3/library/asyncio-task.html

### Metaclass
https://stackoverflow.com/questions/100003/what-are-metaclasses-in-python


## Linux

### Access Rights
```
  754 - rwxr-x--x
  |
  owner group other
```

### Other Topics

- I/O
- Multithreading
- Socket

## Networking

### OSI
http://neerc.ifmo.ru/wiki/index.php?title=OSI_Model

### TCP/UDP

- Three handshake

### IP

- Mask

### Rest

 - https://martinfowler.com/articles/richardsonMaturityModel.html
 - GET/POST
    - Url lengh
    - HTTPS
    - Cache 
    - Google search

## SQL

- Select/Insert/Update
- Left join/Right join
- Index
- Foreign Key
- Aggregation
- WHERE / HAVING

## NoSQL
- Mongo
- DynamoDB
- ElasticSearch

## Frameworks

- Flask
- Django
  - MVC
  - Middleware
  - Template
  - Admin
- Django Rest Framework

## Testing

- Unit Test
- Functional Test
- Integration Test
- Coverage

## Deployment

- AWS / GCloud / Azure
- AWS Lambda


## Frontend
- JS (React/Angular)
- CSS

## Docker
- Dockerfile
- docker-compose.yml
- kubernetes

## Algoritmization
- Linked List
- Hash Table
- Trees
- ...