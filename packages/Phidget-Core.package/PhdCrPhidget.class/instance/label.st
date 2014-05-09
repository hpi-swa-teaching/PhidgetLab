accessing
label
	"Return the Phidget's label (a string). If there was an error, an empty string is returned."

	| result |
	result := self checkValid
		ifTrue: [ self class primGetLabel: id ]
		ifFalse: [].
	^ result
		ifNil: [ '' ]
		ifNotNil: [ result asString ].