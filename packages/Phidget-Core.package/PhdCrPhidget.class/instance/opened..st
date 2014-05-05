accessing
opened: aBoolean

	opened == aBoolean ifTrue: [ ^ self ].
	opened := aBoolean.
	aBoolean
		ifTrue: [ PhdCrPhidgetManager addToOpenedPhidgets: self ]
		ifFalse: [ PhdCrPhidgetManager removeFromOpenedPhidgets: self ].