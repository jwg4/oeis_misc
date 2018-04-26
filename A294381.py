def A294381(n):
    a = [1, 3]
    b = [2]
    for i in a:
        yield i
    for m in range(2, n):
        a_ = a[m-1]*b[m-2]
        yield a_
        a.append(a_)
        if len(b) < n + 2:
            for i in range(a[m-1]+1, a_):
                b.append(i)


def b_file_format(values):
    i = 0
    for n in values:
        yield "%d %d\n" % (i, n)
        i = i + 1


if __name__ == '__main__':
    with open('A294381.txt', 'w') as f:
        for line in b_file_format(A294381(50)):
            f.write(line)
