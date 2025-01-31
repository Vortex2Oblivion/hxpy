package hxpy;

import cpp.RawPointer;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:keep
extern class PyImport {
	@:native('PyImport_Import')
	static function importObject(name:RawPointer<PyObject>):RawPointer<PyObject>;
}
