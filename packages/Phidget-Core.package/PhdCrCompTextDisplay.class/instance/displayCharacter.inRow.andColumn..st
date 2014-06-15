display
displayCharacter: aCharacterOrString inRow: row andColumn: column
	"display character or 1-element string in row 'row' and column 'column'.
	return true if the operation succeeded, false otherwise."
	
	| charString |
	phidget isAttached ifFalse: [ ^ false ].
	(self rowIsInRange: row) & (self columnIsInRange: column) ifFalse: [ ^ false ].
	
	charString := nil.
	(aCharacterOrString isMemberOf: Character)
		ifTrue: [ charString := aCharacterOrString asString ]
		ifFalse: [
			(aCharacterOrString isMemberOf: ByteString)
				ifTrue: [ charString := aCharacterOrString ]
				ifFalse: [ ^ false ] ].
	charString size == 1 ifFalse: [ ^ false ].
	
	^ (self class
		primDisplayCharacter: phidget id
		in: row - 1
		and: column - 1
		value: charString) == 1