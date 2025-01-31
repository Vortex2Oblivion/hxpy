package;

import hxpy.FileUtils;
import hxpy.PyObject;
import cpp.FILE;
import cpp.NativeFile;
import hxpy.PyRun;
import cpp.RawConstPointer;
import hxpy.WChar;
import hxpy.PyConfig;
import hxpy.PyStatus;
import hxpy.Py;

using cpp.RawPointer;
using hxpy.WChar;

class Main {
	static var status:PyStatus;
	static var config:PyConfig;
	static function main() {


		PyConfig.initConfig(config.addressOf());
		PyConfig.setBytesString(config.addressOf(), config.program_name.toWChar(), Sys.args()[0]);

		if (Py.exception(status) == 1) {
			exception();
		}

		status = Py.initializeFromConfig(config.addressOf());

		if (Py.exception(status) == 1) {
			exception();
		}

		PyConfig.configClear(config.addressOf());

		PyRun.simpleString("from time import time,ctime\n" + "print('Today is', ctime(time()))\n");
		if (Py.finalizeEx() < 0) {
			Sys.exit(120);
		};
	}

	static function exception() {
		PyConfig.configClear(config.addressOf());
		PyConfig.exitStatusException(status);
	}
}
