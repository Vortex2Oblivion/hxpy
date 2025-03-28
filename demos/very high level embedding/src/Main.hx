package;

import hxpy.PyStatus;
import hxpy.PyConfig;
import hxpy.Py;
import hxpy.PyRun;

using cpp.RawPointer;

class Main {
	static var status:PyStatus;
	static var config:PyConfig;
	static function main() {

		PyConfig.initPythonConfig(config.addressOf());
		status = PyConfig.setBytesString(config.addressOf(), config.program_name.addressOf(), Sys.args()[0]);

		if (Py.exception(status)) {
			exception();
		}

		status = Py.initializeFromConfig(config.addressOf());

		if (Py.exception(status)) {
			exception();
		}

		PyConfig.clear(config.addressOf());

		PyRun.simpleString("from time import time,ctime\n" + "print('Today is', ctime(time()))\n");
		Py.finalizeEx();
	}

	static inline function exception() {
		PyConfig.clear(config.addressOf());
		PyConfig.exitStatusException(status);
	}
}
