package hxpy;

import cpp.WCharTStarStar;
import cpp.UInt32;

@:native("PyConfig")
extern class PyConfig {
	private var _config_init:Int;

	public var isolated:Int;
    public var use_environment:Int;
    public var dev_mode:Int;
    public var install_signal_handlers:Int;
    public var use_hash_seed:Int;
    public var hash_seed:UInt32;
    public var faulthandler:Int;
    public var tracemalloc:Int;
    public var perf_profiling:Int;
    public var import_time:Int;
    public var code_debug_ranges:Int;
    public var show_ref_count:Int;
    public var dump_refs:Int;
    public var dump_refs_file:WCharTStarStar;
    public var malloc_stats:Int;
    public var filesystem_encoding:WCharTStarStar;
    public var filesystem_errors:WCharTStarStar;
    public var pycache_prefix:WCharTStarStar;
    public var parse_argv:Int;
    public var orig_argv:PyWideStringList;
    public var argv:PyWideStringList;
    public var xoptions:PyWideStringList;
    public var warnoptions:PyWideStringList;
    public var site_import:Int;
    public var bytes_warning:Int;
    public var warn_default_encoding:Int;
    public var inspect:Int;
    public var interactive:Int;
    public var optimization_level:Int;
    public var parser_debug:Int;
    public var write_bytecode:Int;
    public var verbose:Int;
    public var quiet:Int;
    public var user_site_directory:Int;
    public var configure_c_stdio:Int;
    public var buffered_stdio:Int;
    public var stdio_encoding:WCharTStarStar;
    public var stdio_errors:WCharTStarStar;

    #if MS_WINDOWS
    public var legacy_windows_stdio:Int;
    #end

    public var check_hash_pycs_mode:Int;
    public var use_frozen_modules:Int;
    public var safe_path:Int;
    public var int_max_str_digits:Int;
    public var cpu_count:Int;

    #if Py_GIL_DISABLED
    public var enable_gil:Int;
    #end

    public var pathconfig_warnings:Int;
    public var program_name:WCharTStarStar;
    public var pythonpath_env:WCharTStarStar;
    public var home:WCharTStarStar;
    public var platlibdir:WCharTStarStar;

    public var module_search_paths_set:Int;
    public var module_search_paths:PyWideStringList;
    public var stdlib_dir:WCharTStarStar;
    public var executable:WCharTStarStar;
    public var base_executable:WCharTStarStar;
    public var prefix:WCharTStarStar;
    public var base_prefix:WCharTStarStar;
    public var base_exec_prefix:WCharTStarStar;

    public var skip_source_first_line:Int;
    public var run_command:WCharTStarStar;
    public var run_module:WCharTStarStar;
    public var run_filename:WCharTStarStar;

    public var sys_path_0:WCharTStarStar;

    private var _install_importlib:Int;
    private var _init_main:Int;
    private var _is_python_build:Int;

    #if Py_STATS
    private var _pystats:Int;
    #end

    #if Py_DEBUG
    public var run_presite:WCharTStarStar;
    #end

    @:native('PyConfig_Clear')
	static function clear(config:RawPointer<PyConfig>):Void;

    @:native('Py_ExitStatusException')
	static function exitStatusException(err:PyStatus):Void;

    @:native('PyConfig_InitPythonConfig')
	static function initPythonConfig(config:RawPointer<PyConfig>):Void;

    @:native('PyConfig_SetBytesString')
	static function setBytesString(config:RawPointer<PyConfig>, config_str:RawPointer<WCharTStarStar>, str:ConstCharStar):PyStatus;
}