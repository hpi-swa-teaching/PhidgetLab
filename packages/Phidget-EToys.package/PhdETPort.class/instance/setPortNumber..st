accessing
setPortNumber: aNumber

	( aNumber isInteger and: [ self isInRange: aNumber ] )
	ifTrue: [
		portNumber := aNumber.
		numberString contents: portNumber asString.
		self centerNumberString.
		self update: self class portType ]