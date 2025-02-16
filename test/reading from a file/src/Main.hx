package;

import hxpy.PyMemAllocatorEx;
import hxpy.PyMemAllocatorDomain;
import cpp.RawPointer;
import hxpy.PyMem;
import hxpy.PyHelper;
import hxpy.PyRun;
import hxpy.Py;

class Main {
	static function main() {
		Py.initialize();
		PyRun.simpleFile(PyHelper.toFile("script.py"), "script.py");
		PyMem.getAllocator(PyMemAllocatorDomain.PYMEM_DOMAIN_MEM, RawPointer.addressOf(new PyMemAllocatorEx()));
		Py.finalizeEx();
	}
}
