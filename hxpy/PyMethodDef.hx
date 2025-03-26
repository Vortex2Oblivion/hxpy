package hxpy;

@:native("PyMethodDef")
extern class PyMethodDef {
	/* The name of the built-in function/method */
	var ml_name:ConstCharStar;
	/* The C function that implements it */
	var ml_meth:PyCFunction;
	/* Combination of METH_xxx flags, which mostly
		describe the args expected by the C func */
	var ml_flags:Int;
	/* The __doc__ attribute, or null */
	var ml_doc:ConstCharStar;

	/**
	 * Creates a new `PyMethodDef`
	 * @param ml_name The name of the built-in function/method
	 * @param ml_meth The C function that implements it
	 * @param ml_flags Combination of METH_xxx flags, which mostly describe the args expected by the C func
	 * @param ml_doc The `__doc__` attribute, or null
	 */
	static extern inline function create(ml_name:ConstCharStar, ml_meth:PyCFunction, ml_flags:Int, ml_doc:ConstCharStar):PyMethodDef {
		return untyped __cpp__("PyMethodDef{ {0}, {1}, {2}, {3} }", ml_name, ml_meth, ml_flags, ml_doc);
	}
}
