package hxpy;

import cpp.ConstCharStar;
import cpp.RawPointer;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:native("PyModuleDefSlot")
@:structAccess
extern class PyModuleDefSlot {
}
