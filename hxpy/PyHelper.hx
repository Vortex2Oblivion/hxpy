package hxpy;

import cpp.ConstCharStar;
import cpp.RawPointer;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:keep
class PyHelper {
    public static inline function toFile(scriptPath:ConstCharStar):RawPointer<FILE> {
        var obj:RawPointer<PyObject> = Py.buildValue("s", scriptPath);
        return untyped __cpp__("_Py_fopen_obj({0}, {1})", obj, "r+");
    }
}