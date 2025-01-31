package;

import hxpy.PyLong;
import hxpy.PyCallable;
import hxpy.PyImport;
import hxpy.PyUnicode;
import hxpy.Py;
import hxpy.PyObject;
import hxpy.PyTuple;
import cpp.RawPointer;

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

		if(pModule != null){
			pFunc = PyObject.getAttrString(pModule, Sys.args()[2]);
			trace(PyCallable.check(pFunc));
			if(pFunc != null && PyCallable.check(pFunc) == 0){
				pArgs = PyTuple.newPyTuple(Sys.args().length - 3);
				for(i in 0...Sys.args().length - 3){
					pValue = PyLong.fromLong(Std.parseInt(Sys.args()[i + 3]));
				}
			}
		}
	}
}
