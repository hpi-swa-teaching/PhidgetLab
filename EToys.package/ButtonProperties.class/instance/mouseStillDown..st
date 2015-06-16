events
mouseStillDown: evt

	(visibleMorph containsPoint: evt cursorPoint) ifFalse: [^self].
	nextTimeToFire ifNil: [^self].
	nextTimeToFire <= Time millisecondClockValue ifTrue: [
		self doButtonAction: evt.
		nextTimeToFire := Time millisecondClockValue + self delayBetweenFirings.
		^self
	].
