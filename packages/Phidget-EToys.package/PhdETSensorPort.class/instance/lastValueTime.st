accessing
lastValueTime

	lastValueTime ifNil: [lastValueTime := Time now].
	^ lastValueTime