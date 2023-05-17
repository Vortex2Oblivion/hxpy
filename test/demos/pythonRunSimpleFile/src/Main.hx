package;

import hxpy.PythonMisc;
import hxpy.PythonOpen;
import hxpy.PythonFile;
import hxpy.Python;



class Main {
	public static function main():Void {
        trace("Python Ver: " + Python.VERSION);
		PythonOpen.pythonInitialize();
		PythonFile.pythonRunSimpleFile("script.py");
		PythonOpen.pythonFinalize();
	}
}