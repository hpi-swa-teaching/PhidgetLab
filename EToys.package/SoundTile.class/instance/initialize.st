initialization
initialize
	"Initialize the state of the receiver. Pick the croak sound
	if available, otherwise any sound."
	
	| soundChoices startingSoundName |
	super initialize.
	soundChoices := self soundChoices.
	startingSoundName := (soundChoices includes: 'croak')
							ifTrue: ['croak']
							ifFalse: [[soundChoices anyOne] ifError: ['silence']].
	self addArrows; setLiteral: startingSoundName.
	self labelMorph useSymbolFormat