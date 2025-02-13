package hxpy;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:native("PyCompilerFlags")
@:structAccess
extern class PyCompilerFlags {
	public var cf_flags:Int;
	public var cf_feature_version:Int;
}