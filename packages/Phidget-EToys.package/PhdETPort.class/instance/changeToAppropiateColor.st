animation
changeToAppropiateColor

	self name ifNil: [^ self].
	phidget getAttached 
		ifTrue: [self makeColored]
		ifFalse: [self makeGray].