from .basic import naturals


def e_proportion():
    e = 2.718281828
    for i in naturals():
        yield int(i * (1.0 - 1.0 / e))


def e_proportion_remainder():
    for n, i in zip(naturals(), e_proportion()):
        yield n - i