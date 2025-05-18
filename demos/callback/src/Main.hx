package;

import cpp.Function;
import cpp.Callable;
import hxpy.*;

using cpp.RawPointer;

class Main {
	static var numargs:Int = Sys.args().length;

	static function embNumargs(self:RawPointer<PyObject>, args:RawPointer<PyObject>):RawPointer<PyObject> {
		trace("PENIS");
		if (!PyArg.parseTuple(args, ":numargs")) {
			trace("PENIS");
			return null;
		}

		return PyLong.fromLong(numargs);
	}

	static function PyInit_emb():RawPointer<PyObject> {
		untyped __cpp__('
			static PyMethodDef EmbMethods[] = {
				{"numargs", {0} , METH_VARARGS,
				"Return the number of arguments received by the process."},
				{NULL, NULL, 0, NULL}
			};

			static PyModuleDef EmbModule = {
				PyModuleDef_HEAD_INIT, "emb", NULL, -1, EmbMethods,
				NULL, NULL, NULL, NULL
			};
		', Function.fromStaticFunction(embNumargs));
		return untyped __cpp__("PyModule_Create(&EmbModule)");
	}


	static function main() {
		untyped __cpp__('
		PyImport_AppendInittab("emb", &PyInit_emb);
		' );
		Py.initialize();
		PyRun.simpleFile(PyHelper.toFile("script.py"), "script.py");
		Py.finalizeEx();
	}
}
