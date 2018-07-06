def choose(n, i):
    """
        >>> choose(4, 2)
        6
    """
    a = 1
    for k in range(n, n-i, -1):
        a = a * k
    for k in range(i, 0, -1):
        a = a / k
    return a
