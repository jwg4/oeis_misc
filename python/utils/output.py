import logging


def b_file_format(values, start=0):
    i = start
    for n in values:
        yield "%d %d\n" % (i, n)
        i = i + 1


def write_b_file(name, values, start=0):
    with open(name, 'w') as f:
        for line in b_file_format(values, start):
            logging.info("Writing %s to b-file" % (line, ))
            f.write(line)


def chunks(s, n):
    a = s
    while len(a) > n:
        yield a[:n]
        a = a[n:]
    yield a


def data_section(values):
    """
        >>> data_section(range(0, 260))
        '0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67'
        >>> data_section(range(0, 10))
        '0, 1, 2, 3, 4, 5, 6, 7, 8, 9'
        >>> data_section([2] * 200)
        '2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2'
    """
    ss = [str(v) for v in values]
    l = len(ss[0])
    i = 1
    for s in ss[1:]:
        l = l + len(ss[i]) + 2
        if l > 260:
            break
        i = i + 1
    return ", ".join(ss[:i])


def truncate(sequence, n):
    c = 0
    for i in sequence:
        if c >= n:
            return
        yield i
        c = c + 1
