package hxpy;

import cpp.ConstCharStar;
import cpp.RawPointer;

class PyHelper {
    public static inline function toFile(scriptPath:ConstCharStar):RawPointer<FILE> {
        var obj:RawPointer<PyObject> = Py.buildValue("s", scriptPath);
        return FileUtils._Py_fopen_obj(obj, "r+");
    }
}