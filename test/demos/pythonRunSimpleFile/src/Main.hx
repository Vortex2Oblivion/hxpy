package;

import hxpy.PythonOpen;
import hxpy.PythonFile;
import hxpy.Python;



class Main {
	public static function main():Void {
		//tracing some basic copyright and version information
        trace("Python Ver: " + Python.VERSION);
		trace(Python.pythonGetCopyright());
		PythonOpen.pythonInitialize(); // Initializes python
		PythonFile.pythonRunSimpleFile(/*path to script file*/"script.py"); // runs code
		PythonOpen.pythonFinalize(); //  closes python
	}
}