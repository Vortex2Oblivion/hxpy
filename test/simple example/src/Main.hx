package;

import hxpy.PyRun;
import hxpy.Py;

class Main {
	static function main() {
		Py.initialize();
		PyRun.simpleString("print(\"Hello World!\")");
		Py.finalizeEx();
	}
}
