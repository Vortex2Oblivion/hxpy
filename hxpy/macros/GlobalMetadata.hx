package hxpy.macros;

import haxe.macro.Compiler;

class GlobalMetadata {
	public static macro function run() {
		Compiler.addGlobalMetadata('hxpy', "@:buildXml(\"<include name='${haxelib:hxpy}/build.xml' />\")");
		Compiler.addGlobalMetadata('hxpy', '@:include("Python.h")');
		Compiler.addGlobalMetadata('hxpy', '@:structAccess');
        return macro null;
	}
}