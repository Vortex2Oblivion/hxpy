package addon;

import haxe.Constraints.Function;

@:buildXml("<include name='${this_dir}/..//src/addon/Build.xml' />")
@:include("spammodule.c")

extern class SpamModule {
    @:native("spam_system")
	public static function spam_system():Function;
}