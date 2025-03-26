package hxpy;

@:native("PyObject")
extern class PyObject {
    @:native('PyObject_GetAttrString')
	static function getAttrString(o:RawPointer<PyObject>, attr_name:ConstCharStar):RawPointer<PyObject>;

    @:native('PyObject_CallObject')
	static function callObject(callable:RawPointer<PyObject>, args:RawPointer<PyObject>):RawPointer<PyObject>;
}
