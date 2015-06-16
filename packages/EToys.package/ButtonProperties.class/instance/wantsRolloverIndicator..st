accessing
wantsRolloverIndicator: aBoolean

	wantsRolloverIndicator := aBoolean.
	wantsRolloverIndicator ifTrue: [
		self setEventHandlers: true.
	].