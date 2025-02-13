package hxpy;

import cpp.RawPointer;
import cpp.ConstCharStar;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:keep
extern class FileUtils
{
    @:native('_Py_fopen_obj')
	static function _Py_fopen_obj(path:RawPointer<PyObject>, mode:ConstCharStar):RawPointer<FILE>;
}