package hxpy;

@:native('PyMemAllocatorDomain')
extern class PyMemAllocatorDomain {
	@:native("PYMEM_DOMAIN_RAW") public static final PYMEM_DOMAIN_RAW:PyMemAllocatorDomain;
	@:native("PYMEM_DOMAIN_MEM") public static final PYMEM_DOMAIN_MEM:PyMemAllocatorDomain;
	@:native("PYMEM_DOMAIN_OBJ") public static final PYMEM_DOMAIN_OBJ:PyMemAllocatorDomain;
}