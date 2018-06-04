
class FunctionInspector(object):

    def __init__(self, f):
        self.f = f

    def __call__(self, *args, **kwargs):
        print("Calling %s" % self.f.__name__)
        print("Argument : ")
        print("{} {}".format(args, kwargs))
        result = self.f(*args, **kwargs)
        print("result : %s" % result)
        return result


def function_inspector(f):
    def func_wrapper(*args, **kwargs):
        print("Calling %s" % f.__name__)
        print("Argument : ")
        print("{} {}".format(args, kwargs))
        result = f(*args, **kwargs)
        print("result : %s" % result)
        return result

    return func_wrapper
