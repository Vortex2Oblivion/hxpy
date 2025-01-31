package hxpy;

import cpp.RawConstPointer;
import cpp.NativeString;
import cpp.Char;
import cpp.ConstPointer;
import cpp.RawPointer;
import cpp.ConstCharStar;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:keep
/**
 * Class that contains most of the variables and functions in hxpy!
 */
extern class Py
{
    /**
     * Python version as a whole
     */
    @:native('::String(PY_VERSION)')
	static var VERSION:String;

    @:native('Py_Initialize')
	static function initialize():Void;

    @:native('Py_InitializeFromConfig')
	static function initializeFromConfig(config:RawPointer<PyConfig>):PyStatus;
    
    @:native('Py_BuildValue')
	static function buildValue(a:ConstCharStar, b:ConstCharStar):RawPointer<PyObject>;

    @:native('PyStatus_Exception')
	static function exception(err:PyStatus):Int;

    @:native('Py_Finalize')
	static function finalize():Void;

    @:native('Py_FinalizeEx')
	static function finalizeEx():Int;

    @:native('Py_DECREF')
	static function DECREF(o:RawPointer<PyObject>):Void;
}