from fractions import Fraction


def sequence(a, b):
    while True:
        n = int(b/a)
        yield n
        a = (a * (n+1) - b) * n


def reciprocal(x):
    """
    Just a helper function for calculation with fractions.
    
    >>> reciprocal(Fraction(1, 4))
    Fraction(4, 1)
    """
    return Fraction(1, 1)/x


# Functions specific to the harmonic series of nested intervals
def interval(x):
    """
    >>> interval(Fraction(1, 41))
    41
    >>> interval(Fraction(2, 83))
    41
    """
    X = reciprocal(x)
    return int(X)


def r(n):
    """
    >>> r(3)
    Fraction(1, 3)
    """
    return reciprocal(n)


# Functions used in rescaling and iterating
def n_L(x):
    """
    The interval something is in and the size of the interval
    >>> n_L(Fraction(3, 4))
    (1, Fraction(1, 2))
    """
    n = interval(x)
    L = Fraction(1, n) - Fraction(1, n+1)
    return n, L


def i_step(x):
    """
    The interval something is in, and the next (re-scaled) point
    >>> i_step(Fraction(2, 9))
    (4, Fraction(4, 9))
    """
    n, L = n_L(x)
    x1 = (x - r(n+1)) / L
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
    rotations = [ (l[k:] + l[0:k]) for k in range(0, len(l)) ]
    return tuple(min(rotations))


# Find the limiting cycle for all fractions m/n with 0 < m < n
# Count the number of distinct cycles.
def harmonic_fractility(n):
    """
    >>> harmonic_fractility(11)
    3
    >>> harmonic_fractility(22)
    3
    >>> harmonic_fractility(23)
    3
    """
    limits = [
        limit(Fraction(m, n))
        for m in range(1, n)
    ]
    return len(set(limits))
