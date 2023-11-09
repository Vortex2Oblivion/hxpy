package;

import hxpy.PythonOpen;
import hxpy.PythonFile;
import hxpy.Python;

class Main {
	public static function main():Void {
		//tracing some version information.
    trace("Python Ver: " + Python.VERSION);
		PythonOpen.pythonInitialize(); // Initializes python
		PythonFile.pythonRunSimpleFile(/*path to script file*/"script.py"); // runs code
		PythonOpen.pythonFinalize(); //  closes python
	}
}