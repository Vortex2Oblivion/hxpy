package;

import hxpy.PythonOpen;
import hxpy.Python;

class Main {
	public static function main():Void {
        trace("Python Ver: " + Python.VERSION);
		PythonOpen.pythonInitialize(); //initializes the python instance
		PythonOpen.pythonOpenFile(); //runs code from script.py
		PythonOpen.pythonFinalize(); //initializes the python instance
	}
}