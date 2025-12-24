package;
import cpp.Function;
import cpp.Callable;
import hxpy.*;

using cpp.RawPointer;

class Main {
	static function embNumargs(self:RawPointer<PyObject>, args:RawPointer<PyObject>):RawPointer<PyObject> {
		if (!PyArg.parseTuple(args, ":numargs")) {
			return null;
		}

		return PyLong.fromLong(Sys.args().length);
	}


	static function PyInit_emb():RawPointer<PyObject> {
		untyped __cpp__('
			static PyMethodDef EmbMethods[] = {
				{"numargs", {0} , METH_VARARGS,
				"Return the number of arguments received by the process."},
				{NULL, NULL, 0, NULL}
			};
		', Function.fromStaticFunction(embNumargs));

		var embModule = PyModuleDef.create(PyModuleDef.HEAD_INIT, "emb", untyped NULL, -1, untyped EmbMethods, untyped NULL, untyped NULL, untyped NULL, untyped NULL);

		return PyModule.create(RawPointer.addressOf(embModule));
	}

	static function main() {
		PyImport.appendInittab("emb", PyInit_emb);
		Py.initialize();
		PyRun.simpleFile(PyHelper.toFile("script.py"), "script.py");
		Py.finalizeEx();
	}
}
