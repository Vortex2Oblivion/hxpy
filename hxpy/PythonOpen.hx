package hxpy; 


import haxe.Constraints.Function;


@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
/**
 * Basic class for doing most stuff in hxpy
 */
extern class PythonOpen{
    /**
    *Function for initializing the Python interpreter.
    */
    @:native("Py_Initialize")
	public static function pythonInitialize():Function;

    /**
    *Function for loading Python code from a string.
    @param pycode The actual Python code that is going to be run.
    */
    @:native("PyRun_SimpleString")
	public static function pythonRunSimpleString(pycode:String):Function;

    /**
    *Function for closing a Python instance.
    */
    @:native("Py_Finalize")
	public static function pythonFinalize():Function;
}
