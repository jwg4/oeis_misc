from mathy.comb import choose


def modal_reach(n):
    N = float(n)
    _d = 0
    _x = 0
    for i in range(1, n+1):
        I = float(i)
        x = choose(n, i) * (I / N)**n
        d = x - _x
        if d < _d:
            return i-1
        _d = d
        _x = x
    return n
