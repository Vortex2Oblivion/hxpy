package hxpy;

import cpp.ConstCharStar;
import cpp.RawPointer;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:keep
extern class PyModule {
	@:native('PyModule_Create')
	static function create(def:RawPointer<PyModuleDef>):RawPointer<PyObject>;

	@:native('PyModule_GetDict')
	static function getDict(module:RawPointer<PyObject>):RawPointer<PyObject>;
}
