from basic import nonnegative_integers


def pentagonal_numbers():
    for i in nonnegative_integers():
        yield n * (3 * n - 1) / 2


def A000326():
    return pentagonal_numbers()

A000326.start = 0