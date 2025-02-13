package hxpy;

import cpp.ConstCharStar;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:native("PyStatus")
@:structAccess
extern class PyStatus {
	public var func:ConstCharStar;
	public var err_msg:ConstCharStar;
    public var exitcode:Int;
    private var _type:Int;
}