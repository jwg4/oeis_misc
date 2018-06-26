def naturals(start=1):
    for i in nonnegative_integers():
        yield i + start


def nonnegative_integers():
    i = 0
    while True:
        yield i
        i = i + 1


if __name__ == '__main__':
    for i, x in zip(range(1, 100), naturals()):
        print(i, x)
