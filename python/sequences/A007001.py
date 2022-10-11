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


def a133912():
    c = 0
    started = False
    for j in a007001():
        yield j - c
        c = j


if __name__ == '__main__':
    from utils.output import data_section, truncate

    print(data_section(truncate(a133912(), 300)))
