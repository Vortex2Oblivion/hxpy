package hxpy;

import cpp.RawPointer;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:keep
extern class PyLong {
	@:native('PyLong_FromLong')
	static function fromLong(v:Int):RawPointer<PyObject>;

	@:native('PyLong_AsLong')
	static function asLong(obj:RawPointer<PyObject>):Int;
}
