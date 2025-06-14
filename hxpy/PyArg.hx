package hxpy;

import cpp.VarArg;
import cpp.Rest;

extern class PyArg {
	/**
	 * [Description]
	 * @param args 
	 * @param format 
	 * @param rest 
	 * @return Bool
	 * @see https://www.mit.edu/people/amliu/vrut/python/ext/parseTuple.html
	 */
	@:native('PyArg_ParseTuple')
	static function parseTuple(args:RawPointer<PyObject>, format:ConstCharStar, rest:Rest<VarArg>):Bool;
}
