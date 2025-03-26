package hxpy;

extern class PyFloat {
	@:native('PyFloat_GetMax')
	static function getMax():Float;

    @:native('PyFloat_GetMin')
	static function getMin():Float;

    @:native('PyFloat_GetInfo')
	static function getInfo():RawPointer<PyObject>;

	/**
	 * Return Python float from string PyObject. 
	 * @param v 
	 * @return RawPointer<PyObject>
	 */
    @:native('PyFloat_FromString')
	static function fromString(v:RawPointer<PyObject>):RawPointer<PyObject>;

	/**
	 * Return Python float from C double.
	 * @param v 
	 * @return RawPointer<PyObject>
	 */
    @:native('PyFloat_FromDouble')
	static function fromDouble(v:Float):RawPointer<PyObject>;

    /**
	 * Extract C double from Python float.
	 * @param v 
	 * @return RawPointer<PyObject>
	 */
     @:native('PyFloat_AsDouble')
     static function asDouble(v:RawPointer<PyObject>):Float;
}
