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
