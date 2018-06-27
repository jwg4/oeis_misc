def indexes_equal_to(values, value, start=1):
    i = start
    for x in values:
        if x == value:
            yield i
        i = i + 1
