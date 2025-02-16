package hxpy;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:native("Py_ssize_t")
@:scalar @:coreType @:notNull
extern abstract PySsizeT from(Int) to(Int) {}