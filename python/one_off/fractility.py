import logging

from sequences.basic import naturals
from sequences.fractility import harmonic_fractility
from sequences.transform import indexes_equal_to
from utils.checking import compare_encyclopedia
from utils.output import write_b_file, data_section


if __name__ == '__main__':
    logging.basicConfig(level=logging.INFO)

    A270000 = [harmonic_fractility(n) for n in range(2, 1000)]
    print(data_section(A270000))
    for i in range(4, 7):
        a_number = 269803 + i
        values = indexes_equal_to(A270000, i, start=2)
        print("A%d" % a_number)
        print(data_section(values))
