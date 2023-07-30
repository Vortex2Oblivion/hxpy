package hxpy;

@:buildXml("<include name='${haxelib:hxpy}/project/Build.xml' />")
@:include("Python.h")
@:keep
/**
 * Contains some other misc variables like version and copyright from Python
 */
extern class Python
{
    /**
     * Python version as a whole
     */
    @:native('::String(PY_VERSION)')
	static var VERSION:String;
    /**
     * Major version number
     */
    @:native('::String(PY_MAJOR_VERSION)')
	static var VERSION_MAJOR:String;
    /**
     * Minor version number
     */
    @:native('::String(PY_MINOR_VERSION)')
	static var VERSION_MINOR:String;
    /**
     * Micro version number
     */
    @:native('::String(PY_MICRO_VERSION)')
	static var VERSION_MICRO:String;
    /**
     * Release level
     */
    @:native('::String(PY_RELEASE_LEVEL)')
	static var RELEASE_LEVEL:String;
    /**
     * Release serial number
     */ 
    @:native('::String(PY_RELEASE_SERIAL)')
	static var RELEASE_SERIAL:String;

    /**
    *Function for tracing the Python copyright information.
    */
    @:native("Py_GetCopyright")
	public static function pythonGetCopyright():String;
}