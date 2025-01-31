package hxpy;

import cpp.RawPointer;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:keep
extern class PyCallable {
	@:native('PyCallable_Check')
	static function check(o:RawPointer<PyObject>):Int;
}
