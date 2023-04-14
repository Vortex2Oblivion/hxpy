package;

import hxpy.PythonOpen;
import hxpy.Python;

class Main {
	public static function main():Void {
        trace("Python Ver: " + Python.VERSION);
		PythonOpen.pythonInitialize();
		PythonOpen.pythonRunFunction(); //runs a function from test.py
		PythonOpen.pythonFinalize(); //closes the python instance
	}
}