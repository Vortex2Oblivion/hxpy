package hxpy;

import haxe.io.BytesData;
import cpp.RawPointer;
import cpp.ConstCharStar;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:keep
/**
 * @see https://docs.python.org/3/c-api/init.html
 */
extern class Py {
	@:native('::String(PY_VERSION)')
	static var VERSION:String;

	@:native('Py_False')
	static var FALSE:RawPointer<PyObject>;

	@:native('Py_True')
	static var TRUE:RawPointer<PyObject>;

	@:native('Py_Initialize')
	static function initialize():Void;

	@:native('Py_InitializeEx')
	static function initializeEx(initsigs:Int):Void;

	@:native('Py_InitializeFromConfig')
	static function initializeFromConfig(config:RawPointer<PyConfig>):PyStatus;

	@:native('Py_IsInitialized')
	static function isInitialized():Bool;

	@:native('Py_IsFinalizing')
	static function isFinalizing():Bool;

	@:native('Py_FinalizeEx')
	static function finalizeEx():Bool;

	@:native('Py_Finalize')
    @:deprecated("Use finalizeEx() instead!")
	static function finalize():Void;

    @:native('Py_BytesMain')
	static function bytesMain(argc:Int, argv:BytesData):Void;

    @:native('Py_Main')
	static function main(argc:Int, argv:RawPointer<WChar>):Int;

    @:native('Py_RunMain')
	static function runMain():Int;

	@:native('Py_BuildValue')
	static function buildValue(a:ConstCharStar, b:ConstCharStar):RawPointer<PyObject>;

	@:native('PyStatus_Exception')
	static function exception(err:PyStatus):Bool;

	@:native('Py_DECREF')
	static function DECREF(o:RawPointer<PyObject>):Void;

	@:native('Py_XDECREF')
	static function XDECREF(o:RawPointer<PyObject>):Void;

	@:native('Py_GetVersion')
	static function getVersion():ConstCharStar;

	@:native('Py_GetPlatform')
	static function getPlatform():ConstCharStar;

	@:native('Py_GetCopyright')
	static function getCopyright():ConstCharStar;

	@:native('Py_GetCompiler')
	static function getCompiler():ConstCharStar;

	@:native('Py_GetBuildInfo')
	static function getBuildInfo():ConstCharStar;

	@:native('Py_GetProgramName')
	static function getProgramName():RawPointer<WChar>;
}
