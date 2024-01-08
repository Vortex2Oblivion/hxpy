package;

import hxpy.Python;

class Main {
	public static function main():Void {
		//initializes the python instance
		Python.initialize();
		 //runs code               path to script file
		Python.runSimpleFile("script.py");
		//closes the python instance
		Python.finalize();
	}
}