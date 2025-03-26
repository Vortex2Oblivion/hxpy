package hxpy;

@:native("PyStatus")
extern class PyStatus {
	public var func:ConstCharStar;
	public var err_msg:ConstCharStar;
    public var exitcode:Int;
    private var _type:Int;
}