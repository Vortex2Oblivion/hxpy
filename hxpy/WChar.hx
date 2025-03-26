package hxpy;

import cpp.RawConstPointer;

@:native("wchar_t")
/**
 * TODO: Find a way to make this an abstract over `String` somehow  to avoid conversion functions.
 */
extern class WChar {
	inline public static function toWChar(c:String):RawConstPointer<WChar> {
		return untyped __cpp__("{0}.wchar_str();", c);
	}
}
