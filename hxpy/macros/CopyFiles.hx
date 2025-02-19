package hxpy.macros;

import haxe.macro.Expr;
import sys.io.File;
import sys.io.Process;
import sys.FileSystem;
import haxe.macro.Compiler;
import haxe.macro.Context;

class CopyFiles {
	public static macro function run():Expr {
		var process:Process = new Process('haxelib libpath hxpy');
		var libPath:String = process.stdout.readLine();
		var outputFolder:String = '${Compiler.getOutput()}';
		process.close();
        
        copyFiles('$libPath/package', outputFolder);
		return macro a;
	}

	public static function copyFiles(start:String, destination:String) {
		if (!FileSystem.exists(destination)) {
			FileSystem.createDirectory(destination);
		}

		for (file in FileSystem.readDirectory(start)) {
			var filePath:String = '$start/$file';
			var destPath:String = '$destination/$file';

			File.copy(filePath, destPath);
		}
	}
}