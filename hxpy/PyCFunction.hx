package hxpy;

import cpp.Callable;

typedef PyCFunction = Callable<(RawPointer<PyObject>, RawPointer<PyObject>) -> RawPointer<PyObject>>;