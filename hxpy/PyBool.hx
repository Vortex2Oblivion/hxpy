package hxpy;

import cpp.ConstCharStar;
import cpp.RawPointer;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:keep
extern class PyBool {
    @:native('PyBool_Check')
	static function check(o:RawPointer<PyObject>):Bool;
    
	@:native('PyBool_FromLong')
	static function fromLong(v:Int):RawPointer<PyObject>;

	/**
	 * Helper function that takes in a `Bool` instead of an `Int`
     * Same as `fromLong` internally.
	 * @param v 
	 * @return RawPointer<PyObject>
	 */
    @:native('PyBool_FromLong')
	static function fromBool(v:Bool):RawPointer<PyObject>;
}
