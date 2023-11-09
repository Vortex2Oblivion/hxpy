### hxpy


![](https://img.shields.io/github/repo-size/Vortex2Oblivion/hxpy) ![](https://badgen.net/github/open-issues/Vortex2Oblivion/hxpy) ![](https://badgen.net/badge/license/MIT/green)
[![CI](https://img.shields.io/github/actions/workflow/status/Vortex2Oblivion/hxpy/main.yml?branch=master&logo=github)](https://github.com/Vortex2Oblivion/hxpy/actions?query=workflow%3ACI)

![](https://raw.githubusercontent.com/Vortex2Oblivion/hxpy/master/assets/hxpy-logo.png)

Haxe/hxcpp @:native bindings for Python

This library works on the C++ target only!

(Windows only as of now. Mac and Linux might work but they are untested!)

### Installation

via haxelib
```bash
haxelib install hxpy
```
via git for the latest updates
```bash
haxelib git hxpy https://github.com/Vortex2Oblivion/hxpy.git
```

### Usage

See the ![demos](https://github.com/Vortex2Oblivion/hxpy/tree/master/test/demos) folder for more usage examples

With a file:

```haxe
package;

import hxpy.PythonOpen;

class Main {
	public static function main():Void {
		//initializes the python instance
		PythonOpen.pythonInitialize();
		 //runs code               path to script file
		PythonFile.pythonRunSimpleFile("script.py");
		//closes the python instance
		PythonOpen.pythonFinalize();
	}
}
```

Without a file:

```haxe
package;

import hxpy.PythonOpen;

class Main {
	public static function main():Void {
		//initializes the python instance
		PythonOpen.pythonInitialize();
		 //runs code
		PythonOpen.pythonRunSimpleString("print('Hello World From Embedded Python')");
		//closes the python instance
		PythonOpen.pythonFinalize();
	}
}
```

### Licensing

![](https://raw.githubusercontent.com/Vortex2Oblivion/hxpy/master/assets/hxpy-logo.png)

**hxpy** is made available under the **MIT License**. Check [LICENSE](./LICENSE) for more information.

![](https://raw.githubusercontent.com/Vortex2Oblivion/hxpy/master/assets/python-logo.png)

**Python** is made available under various licenses. Check [The Python Github](https://github.com/python/cpython/blob/main/LICENSE) or [python.org](https://www.python.org/)for more information.

![](https://raw.githubusercontent.com/Vortex2Oblivion/hxpy/master/assets/haxe-logo.png)

**Haxe** is made available under various licenses. Check [The Haxe Github](https://github.com/HaxeFoundation/haxe#license) for more information.

