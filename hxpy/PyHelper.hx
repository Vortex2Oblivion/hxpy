package hxpy;

class PyHelper {
    /**
     * Returns a `RawPointer` to a `FILE` from a string path
     * @param scriptPath 
     * @return RawPointer<FILE>
     */
    public static inline function toFile(scriptPath:ConstCharStar):RawPointer<FILE> {
        var obj:RawPointer<PyObject> = Py.buildValue("s", scriptPath);
        return untyped __cpp__("_Py_fopen_obj({0}, {1})", obj, "r+");
    }
}