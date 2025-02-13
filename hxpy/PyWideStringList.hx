package hxpy;

import cpp.ConstCharStar;
import cpp.RawPointer;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:native("PyWideStringList")
@:structAccess
extern class PyWideStringList {
	public var length:Int;
	public var items:RawPointer<ConstCharStar>;
}