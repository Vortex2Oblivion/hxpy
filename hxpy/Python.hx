package hxpy;

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
    @:native('::String(PY_VERSION)')
	static var VERSION:String;
}