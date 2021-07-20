
def decorator(func):
    def decorated(input_text):
        print('함수 시작 !')
        func(input_text)
        print('함수 끝 !')

    return decorated

@decorator
def hello_world(input_text):
    print(input_text)

hello_world('Hell0 world!')


def check_integer(func):
    def decorated(width, height):
        if width >= 0 and height >= 0:
            return func(width, height)


class User:
    def __init__(self,auth):
        self.isa











