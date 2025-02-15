package hxpy;

import haxe.exceptions.NotImplementedException;
import cpp.RawPointer;

@:buildXml("<include name='${haxelib:hxpy}/hxpy/Build.xml' />")
@:include("Python.h")
@:keep
extern class PyMem {
    @:native('PyMem_Malloc')
	static function malloc(size:Int):RawPointer<cpp.Void>;

    @:native('PyMem_Calloc')
	static function calloc(nelem:Int, elsize:Int):RawPointer<cpp.Void>;

    @:native('PyMem_Realloc')
	static function realloc(ptr:RawPointer<cpp.Void>, new_size:Int):RawPointer<cpp.Void>;

    @:native('PyMem_Free')
	static function free(ptr:RawPointer<cpp.Void>):Void;

	@:native('PyMem_GetAllocator')
	static inline function getAllocator(domain:PyMemAllocatorDomain, allocator:RawPointer<PyMemAllocatorEx>):Void{
        throw new NotImplementedException();
    }

    @:native('PyMem_SetAllocator')
	static inline function setAllocator(domain:PyMemAllocatorDomain, allocator:RawPointer<PyMemAllocatorEx>):Void{
        throw new NotImplementedException();
    }

    @:native('PyMem_SetupDebugHooks')
	static function setupDebugHooks():Void;
}
