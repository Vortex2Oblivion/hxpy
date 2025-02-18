package hxpy;

import cpp.VarArg;
import cpp.Rest;
import cpp.ConstCharStar;
import cpp.RawPointer;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:keep
extern class PyArg {
	@:native('PyArg_ParseTuple')
	static function parseTuple(args:RawPointer<PyObject>, format:ConstCharStar, rest:Rest<VarArg>):Bool;
}
