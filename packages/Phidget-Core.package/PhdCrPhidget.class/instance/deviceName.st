accessing
deviceName
	"Return the Phidget's device name (or better: a description of is type). If there was an error, an empty string is returned."

	| result |
	result := self checkValid
		ifTrue: [ self class primGetDeviceName: id ]
		ifFalse: [].
	^ result
		ifNil: [ '' ]
		ifNotNil: [ result asString ].