def expand(l):
    for i in l:
        for j in range(1, i + 2):
            yield j


def a007001():
    l = [1]
    c = 0
    while True:
        for i in l[c:]:
            yield i
            c = c + 1

        l = list(expand(l))


if __name__ == '__main__':
    for n in a007001():
        print(n)
