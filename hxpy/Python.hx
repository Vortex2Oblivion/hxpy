package hxpy;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:keep
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
	public static function getCopyright():String;

    /**
    *Function for initializing the Python interpreter.
    */
    @:native("Py_Initialize")
	public static function initialize():Void;

    /**
    *Function for loading Python code from a string.
    @param pycode The actual Python code that is going to be run.
    */
    @:native("PyRun_SimpleString")
	public static function runSimpleString(pycode:String):Void;

    /**
    *Function for closing a Python instance.
    */
    @:native("Py_Finalize")
	public static function finalize():Void;
    
}

@:cppFileCode('
#define PY_SSIZE_T_CLEAN
#ifdef _DEBUG
  #undef _DEBUG
  #include <Python.h>
  #define _DEBUG
#else
  #include <Python.h>
#endif
#include <string>
#include <iostream>
#include <pythonrun.h>
using std::string;
using namespace std;
')
/**
 * Class that contains the function for running code from a file
 * Cuz you cant use untyped cpp in extern classes. a.
 * I don't know what any of this means lmao.
 */
class File {
    /**
     * Function for loading Python code from a file.
     * @param filetoParse The path of your Python script. (eg: script.py)
     */
    public static function runSimpleFile(filetoParse:String) {
      untyped __cpp__('
      PyObject *obj = Py_BuildValue("s", filetoParse.c_str());
      FILE* PScriptFile = _Py_fopen_obj(obj, "r+");
      if(PScriptFile){
        PyRun_SimpleFile(PScriptFile, filetoParse);
        fclose(PScriptFile);
      }
      else{
        std::cout << "File Not Found!";
      } 
    ');
    }
  }