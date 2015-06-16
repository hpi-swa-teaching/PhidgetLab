initialization
delete

	super delete.
	kedamaWorld deleteAllTurtlesOfExampler: self player.
	self player delete.
