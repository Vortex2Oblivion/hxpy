package hxpy;

@:native("PyWideStringList")
extern class PyWideStringList {
	public var length:Int;
	public var items:RawPointer<ConstCharStar>;
}