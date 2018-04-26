def b_file_format(values):
    i = 0
    for n in values:
        yield "%d %d\n" % (i, n)
        i = i + 1


def write_b_file(name, values):
    with open(name, 'w') as f:
        for line in b_file_format(values):
            f.write(line)
