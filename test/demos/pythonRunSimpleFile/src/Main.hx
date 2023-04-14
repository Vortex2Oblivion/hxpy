package;

import hxpy.PythonOpen;
import hxpy.Python;

class Main {
	public static function main():Void {
        trace("Python Ver: " + Python.VERSION);
		PythonOpen.pythonInitialize();
		PythonOpen.pythonRunSimpleFile(); //runs code from a file
		PythonOpen.pythonFinalize();
	}
}