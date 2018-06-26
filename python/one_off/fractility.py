from sequences.basic import naturals
from sequences.fractility import harmonic_fractility
from utils.checking import compare_encyclopedia


A270000 = [ harmonic_fractility(n) for n in naturals() ]

if __name__ == '__main__':
    compare_encyclopedia("A270000", A270000)
