package hxpy;

import hxpy.PyObject;
import cpp.RawPointer;
import cpp.Callable;

typedef PyCFunction = Callable<(RawPointer<PyObject>, RawPointer<PyObject>) -> RawPointer<PyObject>>;