package hxpy;

import cpp.VarArg;
import cpp.Rest;

extern class PyArg {
	@:native('PyArg_ParseTuple')
	static function parseTuple(args:RawPointer<PyObject>, format:ConstCharStar, rest:Rest<VarArg>):Bool;
}
