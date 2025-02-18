package;

import hxpy.*;
import cpp.ConstCharStar;

using cpp.RawPointer;

class Main {
	static function myCallback(self:RawPointer<PyObject>, args:RawPointer<PyObject>) {
		if (!PyArg.parseTuple(args, "s")) {
			return null;
		}	
		trace("Hello from callback function!");
		return Py.NONE;
	}
	static var embModule:PyModuleDef;
	static function main() {
		//PyImport.appendInittab("example", PyModule.create(embModule.addressOf()));
		Py.initialize();
		PyRun.simpleFile(PyHelper.toFile("script.py"), "script.py");
		Py.finalizeEx();
	}
}
