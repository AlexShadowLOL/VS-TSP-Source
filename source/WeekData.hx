package;

class WeekData {
	public static var songsNames:Array<Dynamic> = [
		['Tutorial'],
		['Warming-Up', 'Confident']
	];

	public static var weekNumber:Array<Dynamic> = [
		null,	
		null
	];

	public static var loadDirectory:Array<String> = [
		'tutorial',
		null	
	];

	public static var weekResetName:Array<String> = [
		"Tutorial",
		null
	];

	public static function getCurrentWeekNumber():Int {
		return getWeekNumber(PlayState.storyWeek);
	}

	public static function getWeekNumber(num:Int):Int {
		var value:Int = 0;
		if(num < weekNumber.length) {
			value = num;
			if(weekNumber[num] != null) {
				value = weekNumber[num];
				//trace('Cur value: ' + value);
			}
		}
		return value;
	}

	public static function getWeekDirectory():String {
		var value:String = loadDirectory[PlayState.storyWeek];
		if(value == null) {
			value = "week" + getCurrentWeekNumber();
		}
		return value;
	}
}