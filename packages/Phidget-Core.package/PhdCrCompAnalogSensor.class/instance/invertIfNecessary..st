private
invertIfNecessary: aNumber
	"Inverts the given value if self inverted is true."
	
	inverted ifTrue: [ ^ (1000 - aNumber) ].
	^ aNumber