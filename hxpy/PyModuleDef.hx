package hxpy;

import cpp.Callable;
import cpp.ConstCharStar;
import cpp.RawPointer;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:native("PyModuleDef")
@:structAccess
extern class PyModuleDef {
	var m_base:PyModuleDefBase;
	var m_name:ConstCharStar;
	var m_doc:ConstCharStar;
	var m_size:PySsizeT;
	var m_methods:RawPointer<PyMethodDef>;
	var m_slots:RawPointer<PyModuleDefSlot>;
	var m_traverse:Callable<(a:RawPointer<PyObject>, b:Callable<(a:RawPointer<PyObject>, b:RawPointer<cpp.Void>) -> Int>, c:RawPointer<cpp.Void>) -> Int>;
    var m_clear:Callable<(a:RawPointer<PyObject>) -> Int>;
    var m_free:Callable<(a:RawPointer<cpp.Void>) -> Void>;
}
