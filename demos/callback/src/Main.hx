package;

import cpp.Callable;
import hxpy.*;

using cpp.RawPointer;

class Main {
	static var numargs:Int = Sys.args().length;

	static function embNumargs(self:RawPointer<PyObject>, args:RawPointer<PyObject>):RawPointer<PyObject> {
		trace("PENIS");
		if (!PyArg.parseTuple(args, ":numargs")){
			trace("PENIS");
			return null;
		}

		return PyLong.fromLong(numargs);
	}

	static var embMethods:StdVector<PyMethodDef> = untyped __cpp__("{ PyMethodDef{ {0}, {1}, {2}, {3} }, PyMethodDef { NULL, NULL, 0, NULL } }", "numargs", Callable.fromStaticFunction(embNumargs), 1, "Return the number of arguments received by the process.");

	static var embModule:PyModuleDef = untyped __cpp__("PyModuleDef{ {0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8} }", PyModuleDef.HEAD_INIT, "emb", null, -1, embMethods, null, null, null, null);

	static function emb():RawPointer<PyObject> {
		return PyModule.create(embModule.addressOf());
	}

	static function main() {
		PyImport.appendInittab("emb", Callable.fromStaticFunction(emb));
		Py.initialize();
		PyRun.simpleFile(PyHelper.toFile("script.py"), "script.py");
		Py.finalizeEx();
	}
}
