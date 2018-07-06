from fractions import Fraction


# The interval a point is in, and the next (re-scaled) point
def i_step(x):
    n = int(Fraction(1, 1) / x)
    L = Fraction(1, n) - Fraction(1, n + 1)
    x1 = (x - Fraction(1, n + 1)) / L
    return n, x1


# Find the 'repeating part' of the sequence of interval indices.
def limit(x):
    s = set()
    while True:
        n, x = i_step(x)
        if x in s:
            break
        s.add(x)
    m = x
    l = []
    while True:
        n, x = i_step(x)
        l.append(n)
        if x == m:
            break
    # Take the first rotation of the tuple in lex order
    rotations = [ (l[k:] + l[0:k]) for k in range(0, len(l)) ]
    return tuple(min(rotations))


# Find the limiting cycle for all fractions m/n with 0 < m < n
# Count the number of distinct cycles.
def harmonic_fractility(n):
    limits = [
        limit(Fraction(m, n))
        for m in range(1, n)
    ]
    return len(set(limits))


# Generate the values of the sequence.
def A270000():
    n = 2
    while True:
        yield harmonic_fractility(n)
        n = n + 1
