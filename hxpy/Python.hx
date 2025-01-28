package hxpy;

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

    @:native('PyRun_SimpleString')
	static function runSimpleString(command:ConstCharStar):Int;

    @:native('PyRun_SimpleStringFlags')
	static function runSimpleStringFlags(command:ConstCharStar):Int;

    @:native('Py_Finalize')
	static function finalize():Void;
        
}