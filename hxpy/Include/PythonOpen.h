#define PY_SSIZE_T_CLEAN
#undef _DEBUG
#include <iostream>
#include "Python.h"
#include "pythonrun.h"

int pythonOpenFile()
{
    Py_Initialize();
    FILE* PScriptFile = fopen("test.py", "r");
    if(PScriptFile){PyRun_SimpleFile(PScriptFile, "test.py");
    fclose(PScriptFile);}
    return 0;
}