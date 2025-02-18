package hxpy;

import cpp.Float32;
import cpp.UInt64;
import cpp.SizeT;
import cpp.RawPointer;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:keep
extern class PyLong {
	@:native('PyLong_FromLong')
	static function fromLong(v:Int):RawPointer<PyObject>;

	@:native('PyLong_FromUnsignedLong')
	static function fromUnsignedLong(v:UInt64):RawPointer<PyObject>;

	@:native('PyLong_FromSize_t')
	static function fromSizeT(v:SizeT):RawPointer<PyObject>;

	@:native('PyLong_FromSsize_t')
	static function fromSsizeT(v:PySsizeT):RawPointer<PyObject>;

	@:native('PyLong_FromDouble')
	static function fromDouble(v:Float32):RawPointer<PyObject>;

	@:native('PyLong_AsLong')
	static function asLong(obj:RawPointer<PyObject>):Int;

	@:native('PyLong_AsLongAndOverflow')
	static function asLongAndOverflow(obj:RawPointer<PyObject>, v:RawPointer<Int>):Int;

	@:native('PyLong_AsSize_t')
	static function asSizeT(obj:RawPointer<PyObject>):SizeT;

	@:native('PyLong_AsSsize_t')
	static function asSsizeT(obj:RawPointer<PyObject>):PySsizeT;

	@:native('PyLong_AsUnsignedLong')
	static function asUnsignedLong(obj:RawPointer<PyObject>):UInt64;

	@:native('PyLong_AsUnsignedLongMask')
	static function asUnsignedLongMask(obj:RawPointer<PyObject>):UInt64;

	@:native('PyLong_AsInt')
	static function asInt(obj:RawPointer<PyObject>):Int;

	@:native('PyLong_GetInfo')
	static function getInfo():RawPointer<PyObject>;
}
