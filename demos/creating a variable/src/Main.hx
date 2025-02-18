package;

import hxpy.*;
import cpp.RawPointer;

class Main {
	static function main() {
		Py.initialize();
		var main:RawPointer<PyObject> = PyModule.getDict(PyImport.addModule("__main__"));

		// Create the variables
		var intVariable:RawPointer<PyObject> = PyLong.fromLong(100);
		var floatVariable:RawPointer<PyObject> = PyFloat.fromDouble(1.23);
		var stringVariable:RawPointer<PyObject> = PyUnicode.fromString("\"This is a string variable!\"");
		var booleanVariable:RawPointer<PyObject> = PyBool.fromBool(false);

		// Assign the variables
		PyDict.setItemString(main, "intVariable", intVariable);
		PyDict.setItemString(main, "floatVariable", floatVariable);
		PyDict.setItemString(main, "stringVariable", stringVariable);
		PyDict.setItemString(main, "booleanVariable", booleanVariable);

		// Run the script
		PyRun.simpleFile(PyHelper.toFile("script.py"), "script.py");

		// Our Int variable has changed! Lets trace the new value!
		trace("Our int variable is now: " + PyLong.asLong(PyDict.getItemString(main, "intVariable")));

		// Cleanup
		Py.XDECREF(main);
		Py.XDECREF(intVariable);
		Py.XDECREF(floatVariable);
		Py.XDECREF(stringVariable);
		Py.XDECREF(booleanVariable);
		Py.finalizeEx();
	}
}
