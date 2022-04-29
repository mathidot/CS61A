def neighbor_digits(num, prev_digit=-1):
    """
    Returns the number of digits in num that have the same digit to its right
    or left.
    >>> neighbor_digits(111)
    3
    >>> neighbor_digits(123)
    0
    >>> neighbor_digits(112)
    2
    >>> neighbor_digits(1122)
    4
    """
    def is_digit(num):
        return num >= 1 and num <= 9
    
    if is_digit(num):
        if num == prev_digit:
            return 1
        else:
            return 0
    
    else:
        current_digit = num % 10
        advance_digit = (num // 10) % 10
        return neighbor_digits(num // 10,current_digit) + 1 if current_digit == prev_digit or current_digit == advance_digit else neighbor_digits(num // 10,current_digit)
    
