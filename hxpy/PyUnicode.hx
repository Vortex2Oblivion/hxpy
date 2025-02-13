package hxpy;

import cpp.RawPointer;
import cpp.ConstCharStar;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:keep
extern class PyUnicode {
	@:native('PyUnicode_DecodeFSDefault')
	static function decodeFSDefault(s:ConstCharStar):RawPointer<PyObject>;
}
