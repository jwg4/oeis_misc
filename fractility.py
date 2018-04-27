def sequence(a, b):
    while True:
        n = int(b/a)
        yield n
        a = (a * (n+1) - b) * n


def display_seq(a, b):
    pairs = zip(range(1, 30), sequence(a, b))
    values = [ str(x[1]) for x in pairs ]
    print(", ".join(values))


if __name__ == '__main__':
    for d in range(1, 12):
        display_seq(d, 11)