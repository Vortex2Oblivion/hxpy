package;

import hxpy.PythonOpen;
import hxpy.PythonFile;
import hxpy.Python;



class Main {
	public static function main():Void {
        trace("Python Ver: " + Python.VERSION);
		PythonOpen.pythonInitialize();
		PythonFile.doFile("script.py");
		PythonOpen.pythonFinalize();
	}
}