package;

import flixel.FlxState;
import hxpy.Python;
class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		trace("Python Ver: " + Python.VERSION);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
