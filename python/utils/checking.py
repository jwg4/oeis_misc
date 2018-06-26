import logging

from utils.data import get_values


def compare_encyclopedia(a_number, sequence):
    values = get_values(a_number)
    z = list(zip(values, sequence))
    check = [ x[0] == x[1] for x in z ]
    if not all(check):
        i = check.index(False)
        logging.error("%d (in encyclopedia) differs from %d (in code) at position %d" % (z[i][0], z[i][1], i))
        return False
    return True
