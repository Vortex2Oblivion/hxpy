package;

import hxpy.PythonOpen;
import hxpy.Python;

class Main {

	public static function main():Void {
        trace("Python Ver: " + Python.VERSION);
		PythonOpen.pythonInitialize();
		PythonOpen.pythonRunSimpleFile(PythonOpen.openPythonFile(), "script.py"); //runs code from a file
		PythonOpen.pythonFinalize();
	}
}