import logging

from sequences.basic import naturals
from sequences.probability import modal_reach
from sequences.transform import prefix
from utils.checking import compare_encyclopedia


modal_reach_of_n = prefix([0, 0, 0], ( modal_reach(i) for i in naturals() ))


if __name__ == '__main__':
    logging.basicConfig(level=logging.INFO)
    compare_encyclopedia("A125229", modal_reach_of_n)
