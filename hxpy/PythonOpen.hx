package hxpy; 

import haxe.Constraints.Function;


@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:include("PythonOpen.h")

extern class PythonOpen{
    @:native("Py_Initialize")
	public static function pythonInitialize():Function;

    @:native("PyRun_SimpleString")
	public static function pythonRunSimpleString(s:String):Function;

    @:native("PyRun_SimpleFile")
	public static function pythonRunSimpleFile(pscriptfile:String, parsefile:String):Function;

    @:native("Py_Finalize")
	public static function pythonFinalize():Function;
    

}
