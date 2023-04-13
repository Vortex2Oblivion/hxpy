package hxpy;

import haxe.Constraints.Function;

@:buildXml("<include name='${haxelib:hxpy}/project/Build.xml' />")
@:headerCode("#define PY_SSIZE_T_CLEAN")
@:include("Python.h")
@:include("python311.lib")
@:include("python3.lib")
@:keep
extern class Python
{
    @:native('::String(PY_VERSION)')
	static var VERSION:String;

    @:native('::String(PY_MAJOR_VERSION)')
	static var VERSION_MAJOR:String;

    @:native('::String(PY_MINOR_VERSION)')
	static var VERSION_MINOR:String;

    @:native('::String(PY_MICRO_VERSION)')
	static var VERSION_MICRO:String;

    @:native('::String(PY_RELEASE_LEVEL)')
	static var RELEASE_LEVEL:String;

    @:native('::String(PY_RELEASE_SERIAL)')
	static var RELEASE_SERIAL:String;
}