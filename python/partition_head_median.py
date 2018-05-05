def partitions_with_max(n, max):
    """
        Return all partitions of n
        with no individual element greater than max.
    """
    if n == 0:
        yield []
        return
    for first_element in range(max, 0, -1):
        if first_element > n:
            continue
        k = n - first_element
        for sub_partition in partitions_with_max(k, first_element):
            yield [first_element] + sub_partition

def partitions(n):
    """
        Return a sequence of lists
        Each element is a list of integers which sum to n - 
        a partition n.
        The elements of each partition are in descending order
        and the sequence of partitions is in descending lex order.
        >>> list(partitions(4))
        [[3, 1], [2, 2], [2, 1, 1], [1, 1, 1, 1]]
    """
    return partitions_with_max(n, max=n - 1)

def middle_value(n):
    l = list(partitions(n))
    k = int(len(l)/2)
    p = l[k]
    return p[0]

if __name__ == '__main__':
    v = [ str(middle_value(n)) for n in range(2, 30) ]
    print(", ".join(v))
