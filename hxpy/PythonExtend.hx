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
class PythonExtend {
  public static function pythonImportAppendInittab() {
    untyped __cpp__('');
  }
}