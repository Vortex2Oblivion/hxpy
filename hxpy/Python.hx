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
@:publicFields
/**
 * Class that contains most of the variables and functions in hxpy!
 */
extern class Python
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

    @:native('PyRun_SimpleString')
	static function runSimpleString(command:ConstCharStar):Int;

    @:native('PyRun_SimpleStringFlags')
	static function runSimpleStringFlags(command:ConstCharStar, flags:RawPointer<PyCompilerFlags>):Int;

    @:native('PyConfig_Clear')
	static function configClear(config:RawPointer<PyConfig>):Void;

    @:native('Py_ExitStatusException')
	static function exitStatusException(err:PyStatus):Void;

    @:native('PyConfig_InitPythonConfig')
	static function initConfig(config:RawPointer<PyConfig>):Void;

	static inline function setBytesString(config:RawPointer<PyConfig>, config_str:RawConstPointer<WChar>, str:ConstCharStar):PyStatus{
        return untyped __cpp__("PyConfig_SetBytesString({0}, const_cast<wchar_t**>({1}), {2})", config, RawPointer.addressOf(config_str), str);
    };

    @:native('PyStatus_Exception')
	static function exception(err:PyStatus):Int;

    @:native('Py_Finalize')
	static function finalize():Void;

    @:native('Py_FinalizeEx')
	static function finalizeEx():Int;
        
}