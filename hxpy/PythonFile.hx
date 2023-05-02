package hxpy;


@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")

@:cppFileCode('
  #include <Python.h>
')

class PythonFile {
  public static function doFile(filetoParse:String) {
    untyped __cpp__('
    FILE* PScriptFile = fopen(filetoParse.c_str(), "r");
    PyRun_SimpleFile(PScriptFile, filetoParse);
    ');
  }
}