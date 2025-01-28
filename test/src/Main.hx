package;

import hxpy.Python;

class Main {
	static function main() {
		Python.initialize();
		Python.runSimpleString("print(\"hello world\")");
		Python.finalize();
	}
}
