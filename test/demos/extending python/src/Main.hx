package;

import hxpy.Python;
import hxpy.Python.File;

class Main {
	public static function main():Void {
		//initializes the python instance
		Python.initialize();
		 //runs code               path to script file
		File.runSimpleFile("script.py");
		//closes the python instance
		Python.finalize();
	}
}