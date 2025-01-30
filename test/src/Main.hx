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
		Py.initConfig(config.addressOf());
		Py.setBytesString(config.addressOf(), config.program_name.toWChar(), Sys.args()[0]);

		if (Py.exception(status) == 1) {
			exception();
		}

		status = Py.initializeFromConfig(config.addressOf());

		if (Py.exception(status) == 1) {
			exception();
		}

		Py.configClear(config.addressOf());

		var obj:RawPointer<PyObject> = Py.buildValue("s", "script.py");
		var file:RawPointer<hxpy.FILE> = FileUtils._Py_fopen_obj(obj, "r+");
		if (file != null) {
			PyRun.simpleFile(file, "script.py");
		}
		if (Py.finalizeEx() < 0) {
			Sys.exit(120);
		};
	}

	static function exception() {
		Py.configClear(config.addressOf());
		Py.exitStatusException(status);
	}
}
