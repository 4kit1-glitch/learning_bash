from os import environ

var = environ.get("name")
print(type(var), var)