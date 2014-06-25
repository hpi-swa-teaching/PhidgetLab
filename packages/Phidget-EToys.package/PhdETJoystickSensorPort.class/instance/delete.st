initialization
delete

	self slave ifNotNil: [self slave delete].
	super delete.