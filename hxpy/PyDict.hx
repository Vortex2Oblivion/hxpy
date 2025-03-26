package hxpy;

extern class PyDict {
	@:native('PyDict_GetItemString')
	static function getItemString(dp:RawPointer<PyObject>, key:ConstCharStar):RawPointer<PyObject>;

	@:native('PyDict_SetItemString')
	static function setItemString(dp:RawPointer<PyObject>, key:ConstCharStar, item:RawPointer<PyObject>):Bool;

	@:native('PyDict_DelItemString')
	static function delItemString(dp:RawPointer<PyObject>, key:ConstCharStar):Bool;
}
