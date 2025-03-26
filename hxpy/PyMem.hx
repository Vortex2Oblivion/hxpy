package hxpy;

import cpp.SizeT;

extern class PyMem {
	@:native('PyMem_Malloc')
	static function malloc(size:SizeT):RawPointer<cpp.Void>;

	@:native('PyMem_Calloc')
	static function calloc(nelem:SizeT, elsize:SizeT):RawPointer<cpp.Void>;

	@:native('PyMem_Realloc')
	static function realloc(ptr:RawPointer<cpp.Void>, new_size:SizeT):RawPointer<cpp.Void>;

	@:native('PyMem_Free')
	static function free(ptr:RawPointer<cpp.Void>):Void;

	@:native('PyMem_GetAllocator')
	static function getAllocator(domain:PyMemAllocatorDomain, allocator:RawPointer<PyMemAllocatorEx>):Void;

	@:native('PyMem_SetAllocator')
	static function setAllocator(domain:PyMemAllocatorDomain, allocator:RawPointer<PyMemAllocatorEx>):Void;

	@:native('PyMem_SetupDebugHooks')
	static function setupDebugHooks():Void;
}
