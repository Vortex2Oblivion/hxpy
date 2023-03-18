package hxpy; 
@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("PythonOpen.h")
extern class PythonOpen{
    @:native("main")
	public static function open(argc:Int):String;
}