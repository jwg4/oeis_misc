from .basic import naturals, nonnegative_integers


def pentagonal_numbers():
    for i in nonnegative_integers():
        yield n * (3 * n - 1) / 2


def A000326():
    return pentagonal_numbers()

A000326.start = 0


def e_proportion():
    e = 2.718281828
    for i in naturals():
        yield int(i * (1.0 - 1.0 / e))


def e_proportion_remainder():
    for n, i in zip(naturals(), e_proportion()):
        yield n - i