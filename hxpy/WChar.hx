package hxpy;

import cpp.RawConstPointer;

@:native("wchar_t")
extern class WChar {
	inline public static function toWChar(c:String):RawConstPointer<WChar> {
		return untyped __cpp__("{0}.wchar_str();", c);
	}
}
