package;

import hxpy.PythonOpen;
import hxpy.PythonFile;
import hxpy.Python;



class Main {
	public static function main():Void {
        trace("Python Ver: " + Python.VERSION);
		PythonOpen.pythonInitialize();
		PythonOpen.pythonRunSimpleFile("script.py", PythonFile.doFile("scipt.py")); //runs code from a file
		PythonOpen.pythonFinalize();
	}
}