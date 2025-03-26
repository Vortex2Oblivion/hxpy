package hxpy;

import cpp.Callable;

extern class PyImport {
	@:native('PyImport_Import')
	static function importObject(name:RawPointer<PyObject>):RawPointer<PyObject>;

	@:native('PyImport_AddModule')
	static function addModule(name:ConstCharStar):RawPointer<PyObject>;

	@:native('PyImport_GetModule')
	static function getModule(name:RawPointer<PyObject>):RawPointer<PyObject>;

	@:native('PyImport_AppendInittab')
	static function appendInittab(name:ConstCharStar, initfunc:Callable<Void->RawPointer<PyObject>>):RawPointer<PyObject>;
}
