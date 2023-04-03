#define PY_SSIZE_T_CLEAN
#include <iostream>
#include "Python.h"

int main()
{
	//Initialize the python instance
	Py_Initialize();
	
	//Run a simple string
	PyRun_SimpleString("from time import time,ctime\n"
						"print('Today is',ctime(time()))\n");

	//Close the python instance
	Py_Finalize();
}