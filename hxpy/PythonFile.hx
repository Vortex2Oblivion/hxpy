package hxpy;


@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")

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
 * Basic class for loading Python code from a file.
 */
class PythonFile {
  /**
   * Function for loading Python code from a file.
   * @param filetoParse The path of your Python script. (eg: script.py)
   */
  public static function pythonRunSimpleFile(filetoParse:String) {
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