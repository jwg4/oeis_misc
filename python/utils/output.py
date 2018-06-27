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
    ss = [str(v) for v in values]
    l = []
    a = ss[0]
    c = len(a)
    for s in ss[1:]:
        if c + len(s) < 71:
            a = a + "," + s
            c = c + len(s) + 1
        else:
            l.append(a)
            a = s
            c = len(s)
    return "\n".join(l)
