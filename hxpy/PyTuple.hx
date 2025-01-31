package hxpy;

import cpp.RawPointer;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:keep
extern class PyTuple {
	@:native('PyTuple_New')
	static function newPyTuple(size:Int):RawPointer<PyObject>;
}
