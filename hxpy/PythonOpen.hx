package hxpy; 

import haxe.Constraints.Function;


@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("PythonOpen.h")
@:include("Python.h")
@:include("pythonrun")
@:include("<iostream>")
extern class PythonOpen{
    @:native("Py_Initialize")
	public static function pythonInitialize():Function;

    @:native("PyRun_SimpleString")
	public static function pythonRunSimpleString(s:String):Function;

    @:native("Py_Finalize")
	public static function pythonFinalize():Function;

    @:native("pythonRunFunction")
	public static function pythonRunFunction():Function;

    @:native("pythonRunSimpleFile")
	public static function pythonRunSimpleFile():Function;
}