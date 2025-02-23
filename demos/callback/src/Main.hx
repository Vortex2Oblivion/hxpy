package;

import cpp.Callable;
import hxpy.*;

using cpp.RawPointer;

class Main {
	static var numargs:Int = Sys.args().length;

	static function embNumargs(self:RawPointer<PyObject>, args:RawPointer<PyObject>):RawPointer<PyObject> {
		if (!PyArg.parseTuple(args, ":numargs"))
			return null;

		return PyLong.fromLong(numargs);
	}

	static var embMethods:PyMethodDef = untyped __cpp__("PyMethodDef{ {0}, {1}, {2}, {3} }", "numargs", Callable.fromStaticFunction(embNumargs), 1,
		"Return the number of arguments received by the process.");

	static var embModule:PyModuleDef = untyped __cpp__("PyModuleDef{ {0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8} }", PyModuleDef.HEAD_INIT, "emb", null, -1,
		embMethods.addressOf(), null, null, null, null);

	static function pyInitEmb():RawPointer<PyObject> {
		return PyModule.create(embModule.addressOf());
	}

	static function main() {
		untyped __cpp__('PyImport_AppendInittab("emb", &Main_obj::pyInitEmb)');
		Py.initialize();
		PyRun.simpleFile(PyHelper.toFile("script.py"), "script.py");
		Py.finalizeEx();
	}
}
