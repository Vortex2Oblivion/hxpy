package;

import flixel.FlxState;
import hxpy.Python;
import hxpy.PythonOpen;
class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		trace("Python Ver: " + Python.VERSION);
		PythonOpen.open(1);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
