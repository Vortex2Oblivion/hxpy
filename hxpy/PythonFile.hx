package hxpy;


@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")

@:cppFileCode('
#include <string>
#include <iostream>

using std::string;
using namespace std;
')
class PythonFile {
  public static function doFile(filetoParse:String) {
    untyped __cpp__('
      FILE* PScriptFile = fopen(filetoParse.c_str(), "r");
    ');
    return filetoParse;
  }
}