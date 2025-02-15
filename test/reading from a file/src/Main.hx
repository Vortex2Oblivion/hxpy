package;

import hxpy.PyHelper;
import hxpy.PyRun;
import hxpy.Py;

class Main {
	static function main() {
		Py.initialize();
		PyRun.simpleFile(PyHelper.toFile("script.py"), "script.py");
		Py.finalizeEx();
	}
}
