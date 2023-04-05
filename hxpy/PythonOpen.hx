package hxpy; 

import haxe.Constraints.Function;


@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("PythonOpen.h")
@:include("Python.h")
extern class PythonOpen{
    @:native("Py_Initialize")
	public static function pythonInitialize():Void;

    @:native("PyRun_SimpleString")
	public static function pythonRunSimpleString(s:String):String;

    @:native("test")
	public static function test():Function;
}