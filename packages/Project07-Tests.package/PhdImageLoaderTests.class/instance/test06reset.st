testing
test06reset

	PhdImageLoader default.
	PhdImageLoader reset.

	self assert: PhdImageLoader SoleInstance isNil