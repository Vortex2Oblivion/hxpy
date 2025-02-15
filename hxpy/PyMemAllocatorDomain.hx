package hxpy;

enum abstract PyMemAllocatorDomain(Int) to Int from Int {
    var PYMEM_DOMAIN_RAW:Int = 0;
    var PYMEM_DOMAIN_MEM:Int = 0;
    var PYMEM_DOMAIN_OBJ:Int = 0;
}