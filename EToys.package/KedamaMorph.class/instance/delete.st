deleting
delete

	super delete.
	turtlesDict keysDo: [:k |
		| c |
		self deleteAllTurtlesOfExampler: k.
		c := k costume.
		c ifNotNil: [c renderedMorph delete].
	].

