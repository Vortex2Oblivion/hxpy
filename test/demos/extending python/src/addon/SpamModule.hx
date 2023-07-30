package addon;

@:buildXml("<include name='${this_dir}/../src/addon/Build.xml' />")

extern class SpamModule {
    @:native("spam_system")
	public static function spam_system(self:PyObject, args:PyObject):Void;
}

@:include("spammodule.c")
@:native("PyObject")
extern class Object {}

typedef PyObject = cpp.Pointer<Object>;