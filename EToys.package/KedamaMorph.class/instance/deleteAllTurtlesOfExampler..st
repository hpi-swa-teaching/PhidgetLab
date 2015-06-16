turtles
deleteAllTurtlesOfExampler: examplerPlayer

	turtlesDict removeKey: examplerPlayer ifAbsent: [].
	self removeFromTurtleDisplayList: examplerPlayer.
	self calcTurtlesCount.
