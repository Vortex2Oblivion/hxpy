### hxpy


![](https://img.shields.io/github/repo-size/Vortex2Oblivion/hxpy) ![](https://badgen.net/github/open-issues/Vortex2Oblivion/hxpy) ![](https://badgen.net/badge/license/MIT/green)
[![CI](https://img.shields.io/github/actions/workflow/status/Vortex2Oblivion/hxpy/main.yml?branch=master&logo=github)](https://github.com/Vortex2Oblivion/hxpy/actions?query=workflow%3ACI)

![](https://raw.githubusercontent.com/Vortex2Oblivion/hxpy/master/assets/hxpy-logo.png)

Haxe/hxcpp @:native bindings for Python

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

The following code is a very simple usage of hxpy that allows for running Python code from a function

See the ![demos](https://github.com/Vortex2Oblivion/hxpy/tree/master/test/demos) folder for more usage examples

```haxe
package;

import hxpy.PythonOpen;
import hxpy.Python;

class Main {
	public static function main():Void {
        	trace("Python Ver: " + Python.VERSION);
		PythonOpen.pythonInitialize(); //initializes the python instance
		PythonOpen.pythonRunSimpleString("print('Hello World From Embedded Python')"); //runs code
		PythonOpen.pythonFinalize();//closes the python instance
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

