accessing
setPortNumber: aNumber

	( aNumber isInteger and: [ self isInRange: aNumber ] )
	ifTrue: [
		portNumber := aNumber.
		self update: self class portType ]