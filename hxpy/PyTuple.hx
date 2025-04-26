package hxpy;

import cpp.Rest;
import cpp.VarArg;

extern class PyTuple {
	@:native('PyTuple_New')
	static function newPyTuple(size:Int):RawPointer<PyObject>;

	@:native('PyTuple_SetItem')
	static function setItem(p:RawPointer<PyObject>, pos:Int, o:RawPointer<PyObject>):Int;

	@:native('PyTuple_Pack')
	public static function pack(size:PySsizeT, args:Rest<VarArg>):RawPointer<PyObject>;
}
