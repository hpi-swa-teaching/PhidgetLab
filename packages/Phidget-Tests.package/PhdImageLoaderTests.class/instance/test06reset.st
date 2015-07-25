testing
test06reset

	PhdETImageLoader default.
	PhdETImageLoader reset.

	self assert: PhdETImageLoader SoleInstance isNil.