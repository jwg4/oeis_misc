import logging

from sequences.basic import naturals
from sequences.fractility import harmonic_fractility
from sequences.transform import indexes_equal_to
from utils.checking import compare_encyclopedia
from utils.output import write_b_file


if __name__ == '__main__':
    logging.basicConfig(level=logging.INFO)

    A270000 = [harmonic_fractility(n) for n in range(2, 1000)]
    write_b_file("../data/A270000.txt", A270000, 2)
    for i in range(1, 7):
        a_number = A269803 + i
        values = indexes_equal_to(A270000, i, start=2)
        filename = "../data/A%d.txt" % a_number
        write_b_file(filename, values, 1)
