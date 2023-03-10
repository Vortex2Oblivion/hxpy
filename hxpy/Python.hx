package hxpy;

import haxe.display.Display.Define;

@:buildXml("<include name='${haxelib:hxpy}/project/Build.xml' />")
@:headerCode("#define PY_SSIZE_T_CLEAN")
@:include("Python.h")
@:include("stdio.h")
@:include("string.h")
@:include("errno.h")
@:include("limits.h")
@:include("assert.h")
@:include("stdlib.h")
@:keep
extern class Python
{
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

    @:native('::String(PY_VERSION)')
	static var VERSION:String;
}