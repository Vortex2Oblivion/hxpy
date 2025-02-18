package;

import hxpy.PyErr;
import hxpy.PyLong;
import hxpy.PyCallable;
import hxpy.PyImport;
import hxpy.PyUnicode;
import hxpy.Py;
import hxpy.PyObject;
import hxpy.PyTuple;
import cpp.RawPointer;

/**
 * @see https://docs.python.org/3/extending/embedding.html#pure-embedding
 */
class Main {
	static var pName:RawPointer<PyObject>;
	static var pModule:RawPointer<PyObject>;
	static var pFunc:RawPointer<PyObject>;
	static var pArgs:RawPointer<PyObject>;
	static var pValue:RawPointer<PyObject>;

	static function main() {
		var i:Int = 0;

		if (Sys.args().length < 3) {
			trace("Usage: call pythonfile funcname [args]");
			return;
		}

		Py.initialize();
		pName = PyUnicode.decodeFSDefault(Sys.args()[1]);

		pModule = PyImport.importObject(pName);
		Py.DECREF(pName);

		if (pModule != null) {
			pFunc = PyObject.getAttrString(pModule, Sys.args()[2]);
			if (pFunc != null && PyCallable.check(pFunc)) {
				pArgs = PyTuple.newPyTuple(Sys.args().length - 3);
				for (i in 0...Sys.args().length - 3) {
					pValue = PyLong.fromLong(Std.parseInt(Sys.args()[i + 3]));
					if (pValue == null) {
						Py.DECREF(pArgs);
						Py.DECREF(pModule);
						trace("Cannot convert argument");
						return;
					}
					PyTuple.setItem(pArgs, i, pValue);
				}
				pValue = PyObject.callObject(pFunc, pArgs);
				Py.DECREF(pArgs);

				if (pValue != null) {
					trace("Result of call: " + PyLong.asLong(pValue));
					Py.DECREF(pValue);
				} else {
					Py.DECREF(pFunc);
					Py.DECREF(pModule);
					PyErr.print();
					trace("Call failed");
					return;
				}
			}
			else{
				if (PyErr.occurred() != null)
					PyErr.print();
				trace("Cannot find function " + Sys.args()[2]);
			}
			Py.XDECREF(pFunc);
			Py.DECREF(pModule);
		}
		else{
			PyErr.print();
			trace("Failed to load " + Sys.args()[1]);
		}
	}
}
