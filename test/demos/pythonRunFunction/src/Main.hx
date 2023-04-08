package;

import hxpy.PythonOpen;
import hxpy.Python;

class Main {
	public static function main():Void {
        trace("Python Ver: " + Python.VERSION);
		PythonOpen.pythonRunFunction(); //runs a function from test.py
		PythonOpen.pythonFinalize(); //initializes the python instance
	}
}