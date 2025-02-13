package hxpy;

import cpp.RawPointer;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:structAccess
extern class PyErr {
    @:native('PyErr_Print')
	static function print():Void;

    @:native('PyErr_PrintEx')
	static function printEx(set_sys_last_vars:Int):Void;

    @:native('PyErr_Occurred')
	static function occurred():RawPointer<PyObject>;    
}
