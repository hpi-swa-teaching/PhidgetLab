accessing
default

	^ self SoleInstance
		ifNil: [SoleInstance := super new]