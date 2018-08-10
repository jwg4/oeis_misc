
def gcd(a, b):
    """
        >>> gcd(2, 3)
        1
        >>> gcd(-2, 3)
        1
    """
    if a > b:
        return gcd(b, a)
    if a < 0:
        return gcd(0-a, b)
    if a == 0:
        return b
    return gcd(b % a, a)


def reduce(b, c, d):
    """
        >>> reduce(1, 0, 1)
        (1, 0, 1)
        >>> reduce(4, 0, 2)
        (2, 0, 1)
        >>> reduce(0, 0, 2)
        (0, 0, 1)
        >>> reduce(-2, 0, 2)
        (-1, 0, 1)
    """
    B, C, D = b, c, d

    gcd3 = gcd(B, gcd(C, D))
    if gcd3 > 1:
        B = b / gcd3
        C = c / gcd3
        D = d / gcd3

    return (B, C, D)


def increment(b, c, d):
    return (b + d, c, d)


def reciprocal(b, c, d):
    """
        >>> reciprocal(0, 0, 1)

        >>> reciprocal(0, 1, 1)
        (0, -1, 1)
    """
    if b == c == 0:
        return None
    return (d*b, 0-d*c, b*b + c*c)


def imaginary(b, c, d):
    return (0-c, b, d)


def values(x):
    """
        >>> values((1, 0, 1))
        [(2, 0, 1), (1, 0, 1), (0, 1, 1)]
        >>> values((0, 0, 1))
        [(1, 0, 1), (0, 0, 1)]
    """
    inc, reci, imag = (
        increment(*x),
        reciprocal(*x),
        imaginary(*x),
    )
    if reci:
        return [reduce(*inc), reduce(*reci), reduce(*imag)]
    else:
        return [reduce(*inc), reduce(*imag)]


def generate_rows():
    yield [(0, 0, 1)]
    for row in generate_rows():
        yield [ t for x in row for t in values(x) ]


def generate_values():
    r = [(0, 0, 1)]
    s = set(r)
    while True:
        for x in r:
            yield x
        n = [ t for x in r for t in values(x) ]
        r = []
        for t in n:
            if t not in s:
                r.append(t)
                s.add(t)


def is_positive_integer(b, c, d):
    """
        >>> is_positive_integer(1, 0, 1)
        True
    """
    return b > 0 and c == 0 and d == 1


def is_negative_integer(b, c, d):
    """
        >>> is_negative_integer(1, 0, 1)
        False
    """
    return b < 0 and c == 0 and d == 1


def a233694():
    n = 1
    for x in generate_values():
        if is_positive_integer(*x):
            yield n
        n = n + 1


def a233695():
    n = 1
    for x in generate_values():
        if is_negative_integer(*x):
            yield n
        n = n + 1


if __name__ == '__main__':
    r = 0
    for x in generate_values():
        print(x)
        if r > 100:
            break
        r = r + 1
        
    for n in a233695():
        print(n)
