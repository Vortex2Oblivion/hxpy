package;

import cpp.RawConstPointer;
import hxpy.WChar;
import hxpy.PyConfig;
import hxpy.PyStatus;
import hxpy.Python;

using cpp.RawPointer;
using hxpy.WChar;

class Main {
	static var status:PyStatus;
	static var config:PyConfig;

	static function main() {
		Python.initConfig(config.addressOf());
		Python.setBytesString(config.addressOf(), config.program_name.toWChar(), Sys.args()[0]);

		if (Python.exception(status) == 1) {
			exception();
		}

		status = Python.initializeFromConfig(config.addressOf());

		if (Python.exception(status) == 1) {
			exception();
		}

		Python.configClear(config.addressOf());

		Python.runSimpleString("from time import time,ctime\n" + "print('Today is', ctime(time()))\n");
		if(Python.finalizeEx() < 0){
			Sys.exit(120);
		};
	}

	static function exception() {
		Python.configClear(config.addressOf());
		Python.exitStatusException(status);
	}
}
