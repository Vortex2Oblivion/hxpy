package hxpy.macros;

import haxe.macro.Expr;
import sys.io.File;
import sys.io.Process;
import sys.FileSystem;
import haxe.macro.Compiler;
import haxe.macro.Context;

using StringTools;

class CopyFiles {
	public static macro function run():Expr {
		var process:Process = new Process('haxelib libpath hxpy');
		var libPath:String = process.stdout.readLine();
		var outputFolder:String = Compiler.getOutput();
		if(Context.defined("lime")){
			outputFolder = outputFolder.replace("obj", "bin");
		}
		process.close();

		copyFiles('$libPath/package', outputFolder);
		return macro null;
	}

	public static function copyFiles(start:String, destination:String) {
		if (!FileSystem.exists(destination)) {
			FileSystem.createDirectory(destination);
		}

		for (file in FileSystem.readDirectory(start)) {
			var filePath:String = '$start/$file';
			var destPath:String = '$destination/$file';

			if (!FileSystem.exists(destPath)) {
				File.copy(filePath, destPath);
			}
		}
	}
}
