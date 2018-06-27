import logging

from sequences.basic import naturals
from sequences.fractility import harmonic_fractility
from utils.checking import compare_encyclopedia
from utils.output import write_b_file


A270000 = (harmonic_fractility(n) for n in range(2, 1000))

if __name__ == '__main__':
    logging.basicConfig(level=logging.INFO)

    write_b_file("../data/A270000.txt", A270000, 2) 
