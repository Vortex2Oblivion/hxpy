package hxpy;

extern class PyCallable {
	@:native('PyCallable_Check')
	static function check(o:RawPointer<PyObject>):Bool;
}
