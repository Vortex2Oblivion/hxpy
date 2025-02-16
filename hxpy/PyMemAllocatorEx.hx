package hxpy;

import cpp.RawPointer;
import cpp.Callable;
import cpp.SizeT;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:structAccess
@:native('PyMemAllocatorEx')
extern class PyMemAllocatorEx {
	function new():Void;

	/** user context passed as the first argument to the 4 functions */
	var ctx:RawPointer<cpp.Void>;

	/** allocate a memory block */
	var malloc:Callable<(ctx:RawPointer<cpp.Void>, size:SizeT) -> RawPointer<cpp.Void>>;

	/** allocate a memory block initialized by zeros */
	var calloc:Callable<(ctx:RawPointer<cpp.Void>, nelem:SizeT, elsize:SizeT) -> RawPointer<cpp.Void>>;

	/** allocate or resize a memory block */
	var realloc:Callable<(ctx:RawPointer<cpp.Void>, ptr:RawPointer<cpp.Void>, new_size:SizeT) -> RawPointer<cpp.Void>>;

	/** release a memory block */
	var free:Callable<(ctx:RawPointer<cpp.Void>, ptr:RawPointer<cpp.Void>) -> Void>;
}
