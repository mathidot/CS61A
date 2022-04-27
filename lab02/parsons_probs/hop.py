def hop():
    """
    Calling hop returns a curried version of the function f(x, y) = y.
    >>> hop()(3)(2) # .Case 1
    2
    >>> hop()(3)(7) # .Case 2
    7
    >>> hop()(4)(7) # .Case 3
    7
    """
    "*** YOUR CODE HERE ***"
    def f(x):
        def g(y):
            return y
        return g
    return f

from doctest import run_docstring_examples
run_docstring_examples(hop, globals(), True)