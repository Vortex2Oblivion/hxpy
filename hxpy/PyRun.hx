package hxpy;

extern class PyRun {
	/**
	 * This is a simplified interface to `anyFileExFlags()` below, leaving closeit set to `0` and flags set to `null`.
	 * @param command 
	 * @param flags 
	 * @return Int
	 */
	@:native('PyRun_AnyFile')
	static function anyFile(fp:FILE, filename:ConstCharStar):Bool;

	/**
	 * This is a simplified interface to `anyFileExFlags()` below, leaving the closeit argument set to `0`.
	 * @param fp 
	 * @param filename 
	 * @param flags 
	 * @return Int
	 */
	@:native('PyRun_AnyFileFlags')
	static function anyFileFlags(fp:FILE, filename:ConstCharStar, flags:RawPointer<PyCompilerFlags>):Bool;

	/**
	 * This is a simplified interface to `anyFileExFlags()` below, leaving the flags argument set to `null`.
	 * @param fp 
	 * @param filename 
	 * @param closeit 
	 * @return Int
	 */
	@:native('PyRun_AnyFileEx')
	static function anyFileEx(fp:FILE, filename:ConstCharStar, closeit:Int):Bool;

	/**
	 * If fp refers to a file associated with an interactive device (console or terminal input or Unix pseudo-terminal), 
	 * return the value of interactiveLoop(), otherwise return the result of simpleFile(). 
	 * filename is decoded from the filesystem encoding (sys.getfilesystemencoding()). 
	 * If filename is `null`, this function uses `"???"` as the filename. 
	 * If closeit is true, the file is closed before `simpleFileExFlags()` returns.
	 * @param fp 
	 * @param filename 
	 * @param closeit 
	 * @param flags 
	 * @return Int
	 */
	@:native('PyRun_AnyFileExFlags')
	static function anyFileExFlags(fp:RawPointer<FILE>, filename:ConstCharStar, closeit:Int, flags:RawPointer<PyCompilerFlags>):Bool;

	/**
	 * This is a simplified interface to `simpleStringFlags()` below, leaving the `RawPointer<PyCompilerFlags>` argument set to `null`.
	 * @param command 
	 * @return `false` if ran successfully. `true` otherwise.
	 */
	@:native('PyRun_SimpleString')
	static function simpleString(command:ConstCharStar):Bool;

	/**
	 * Executes the Python source code from command in the `__main__` module according to the flags argument. 
	 * If` __main__` does not already exist, it is created. 
	 *  Returns `0` on success or `-1` if an exception was raised. 
	 * If there was an error, there is no way to get the exception information. 
	 * For the meaning of flags, see below.
	 * Note that if an otherwise unhandled SystemExit is raised, this function will not return `-1`, but exit the process, as long as PyConfig.inspect is zero.
	 * @param command 
	 * @param flags 
	 * @return `false` if ran successfully. `true` otherwise.
	 */
	@:native('PyRun_SimpleStringFlags')
	static function simpleStringFlags(command:ConstCharStar, flags:RawPointer<PyCompilerFlags>):Bool;

	/**
	 * This is a simplified interface to `simpleFileExFlags()` below, leaving closeit set to `0` and flags set to `null`.
	 * @param fp 
	 * @param filename 
	 * @return `false` if ran successfully. `true` otherwise.
	 */
	@:native('PyRun_SimpleFile')
	static function simpleFile(fp:RawPointer<FILE>, filename:ConstCharStar):Bool;

	/**
	 * Similar to `simpleStringFlags()`, but the Python source code is read from fp instead of an in-memory string. 
	 * filename should be the name of the file, it is decoded from filesystem encoding and error handler. 
	 * If closeit is true, the file is closed before `simpleFileExFlags()` returns.
	 * @param fp 
	 * @param filename 
	 * @param closeit 
	 * @param flags 
	 * @return `false` if ran successfully. `true` otherwise.
	 */
	@:native('PyRun_SimpleFileExFlags')
	static function simpleFileExFlags(fp:RawPointer<FILE>, filename:ConstCharStar, closeit:Int, flags:RawPointer<PyCompilerFlags>):Bool;

	/**
	 * This is a simplified interface to `interactiveOneFlags()` below, leaving flags set to `null.
	 * @param fp 
	 * @param filename 
	 * @return `false` if ran successfully. `true` otherwise.
	 */
	@:native('PyRun_InteractiveOne')
	static function interactiveOne(fp:RawPointer<FILE>, filename:ConstCharStar):Bool;

	@:native('PyRun_InteractiveOneFlags')
	static function interactiveOneFlags(fp:RawPointer<FILE>, filename:ConstCharStar, flags:RawPointer<PyCompilerFlags>):Bool;

	@:native('PyRun_InteractiveOneObject')
	static function interactiveOneObject(fp:RawPointer<FILE>, filename:ConstCharStar, flags:RawPointer<PyCompilerFlags>):Bool;

	@:native('PyRun_InteractiveLoopFlags')
	static function interactiveLoopFlags(fp:RawPointer<FILE>, filename:ConstCharStar, flags:RawPointer<PyCompilerFlags>):Bool;
}
