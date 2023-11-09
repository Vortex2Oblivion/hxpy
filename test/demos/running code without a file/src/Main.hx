package;

import hxpy.Python;

class Main {
	public static function main():Void {
        trace("Python Ver: " + Python.VERSION);
		Python.initialize(); //initializes the python instance
		Python.runSimpleString("print('Hello World From Embedded Python')"); //runs code
		Python.finalize();//closes the python instance
	}
}