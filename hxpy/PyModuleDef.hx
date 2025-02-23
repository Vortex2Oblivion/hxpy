package hxpy;

import cpp.Callable;
import cpp.ConstCharStar;
import cpp.RawPointer;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:native("PyModuleDef")
@:structAccess
extern class PyModuleDef {
	@:native("PyModuleDef_HEAD_INIT")
	static var HEAD_INIT:PyModuleDefBase;

	var m_base:PyModuleDefBase;
	var m_name:ConstCharStar;
	var m_doc:ConstCharStar;
	var m_size:PySsizeT;
	var m_methods:RawPointer<Array<PyMethodDef>>;
	var m_slots:RawPointer<PyModuleDefSlot>;
	var m_traverse:Traverseproc;
	var m_clear:Callable<(a:RawPointer<PyObject>) -> Int>;
	var m_free:Callable<(a:RawPointer<cpp.Void>) -> Void>;

	static extern inline function create(m_base:PyModuleDefBase, m_name:ConstCharStar, m_doc:ConstCharStar, m_size:PySsizeT,
			m_methods:RawPointer<PyMethodDef>, m_slots:RawPointer<PyModuleDefSlot>,
			m_traverse:Traverseproc,
			m_clear:Callable<(a:RawPointer<PyObject>) -> Int>, 
			m_free:Callable<(a:RawPointer<cpp.Void>) -> Void>):PyModuleDef {
		return untyped __cpp__("return PyModuleDef{ {0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8} }", m_base, m_name, m_doc, m_size, m_methods, m_slots, m_traverse, m_clear, m_free);
	}
}

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:native("traverseproc")
@:structAccess
extern class Traverseproc {
}
