package;

import hxpy.Python;

class Main {
	public static function main():Void {
        trace("Python Ver: " + Python.VERSION);
		Python.pythonInitialize();
		Python.pythonRunSimpleString("Hello World From Embedded Python!");
	}
}