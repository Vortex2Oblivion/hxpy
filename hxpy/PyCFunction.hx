package hxpy;

import hxpy.PyObject;
import cpp.RawPointer;
import cpp.Callable;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:native("PyCFunction")
extern typedef PyCFunction = Callable<(RawPointer<PyObject>, RawPointer<PyObject>) -> RawPointer<PyObject>>