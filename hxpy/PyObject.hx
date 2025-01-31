package hxpy;

import cpp.ConstCharStar;
import cpp.RawPointer;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:native("PyObject")
@:structAccess
extern class PyObject {
    @:native('PyObject_GetAttrString')
	static function getAttrString(o:RawPointer<PyObject>, attr_name:ConstCharStar):RawPointer<PyObject>;

    @:native('PyObject_CallObject')
	static function callObject(callable:RawPointer<PyObject>, args:RawPointer<PyObject>):RawPointer<PyObject>;
}
