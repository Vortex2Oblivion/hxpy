package;

import hxpy.Py;
import cpp.RawPointer;
import hxpy.PyObject;

class Main {
    var pName:RawPointer<PyObject>;
    var pModule:RawPointer<PyObject>;
    var pFunc:RawPointer<PyObject>;
    var pArgs:RawPointer<PyObject>;
    var pValue:RawPointer<PyObject>;
	static function main() {

		var i:Int = 0;

		if (Sys.args().length < 3) {
			trace("Usage: call pythonfile funcname [args]");
			return;
		}

        Py.initialize();
	}
}
