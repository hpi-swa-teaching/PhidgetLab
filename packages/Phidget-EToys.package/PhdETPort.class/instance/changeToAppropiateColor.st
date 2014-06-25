animation
changeToAppropiateColor

	phidget getAttached 
		ifTrue: [self makeColored]
		ifFalse: [self makeGray].