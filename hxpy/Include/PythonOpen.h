#define PY_SSIZE_T_CLEAN
#undef _DEBUG
#include <iostream>
#include "Python.h"
#include "pythonrun.h"


int pythonOpenFile()
{
    Py_Initialize();
	FILE* PScriptFile = fopen("test.py", "r");
	if(PScriptFile){
		PyRun_SimpleFile(PScriptFile, "test.py");
		fclose(PScriptFile);
	}
    return 0;
}

int pythonRunFunction()
{
	//Run a python function
	PyObject *pName, *pModule, *pFunc, *pArgs, *pValue;

	pName = PyUnicode_FromString((char*)"script");
	pModule = PyImport_Import(pName);
	pFunc = PyObject_GetAttrString(pModule, (char*)"test");
	pArgs = PyTuple_Pack(1, PyUnicode_FromString((char*)"Greg"));
	pValue = PyObject_CallObject(pFunc, pArgs);
	
	auto result = _PyUnicode_AsString(pValue);
	std::cout << result << std::endl;

    return 0;

}