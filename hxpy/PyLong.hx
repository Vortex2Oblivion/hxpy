package hxpy;

import cpp.SizeT;
import cpp.RawPointer;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:keep
extern class PyLong {
	@:native('PyLong_FromLong')
	static function fromLong(v:Int):RawPointer<PyObject>;

	@:native('PyLong_AsLong')
	static function asLong(obj:RawPointer<PyObject>):Int;

	@:native('PyLong_AsSize_t')
	static function asSizeT(obj:RawPointer<PyObject>):SizeT;

	@:native('PyLong_AsSsize_t')
	static function asSsizeT(obj:RawPointer<PyObject>):PySsizeT;
}
