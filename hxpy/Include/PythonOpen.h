#define PY_SSIZE_T_CLEAN
#undef _DEBUG
#include <iostream>
#include "Python.h"
#include "pythonrun.h"

int test()
{
    Py_Initialize();
    PyRun_SimpleString("Hello World From Embedded Python");
    if (Py_FinalizeEx() < 0) {
        exit(120);
    }
    return 0;
}