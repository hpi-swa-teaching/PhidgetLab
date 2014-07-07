accessing
SoleInstance

	^ SoleInstance
		ifNil: [ SoleInstance := super new ]