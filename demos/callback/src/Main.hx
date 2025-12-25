package;

import hxpy.PyModuleDef.StaticPyModuleDef;
import cpp.RawFILE;
import hxpy.PyMethodDef;
import cpp.CPPArray;
import cpp.CArray;
import cpp.Pointer;
import cpp.Function;
import hxpy.*;
import cpp.Keywords.nullptr;

using cpp.RawPointer;

class Main {
	static function embNumargs(self:RawPointer<PyObject>, args:RawPointer<PyObject>):RawPointer<PyObject> {
		if (!PyArg.parseTuple(args, ":numargs")) {
			return null;
		}

		return PyLong.fromLong(Sys.args().length);
	}

	static function pyInitEmb():RawPointer<PyObject> {
		var embMethods:RawPointer<PyMethodDef> = CPPArray.create(2, PyMethodDef);

		embMethods[0] = PyMethodDef.create("numargs", Function.fromStaticFunction(embNumargs), PyMethodDef.METH_VARARGS,
			"Return the number of arguments received by the process.");
		embMethods[1] = PyMethodDef.create(nullptr, nullptr, 0, nullptr);

		var embModule:StaticPyModuleDef = PyModuleDef.create(PyModuleDef.HEAD_INIT, "emb", nullptr, -1, embMethods, nullptr, nullptr, nullptr, nullptr);
		return PyModule.create(embModule);
	}

	static function main() {
		PyImport.appendInittab("emb", pyInitEmb);
		Py.initialize();
		PyRun.simpleFile(PyHelper.toFile("script.py"), "script.py");
		Py.finalizeEx();
	}
}
