*Etoys-viewer
chooseNewNameForReference
	"Offer an opportunity for the receiver, presumed already to be known in the References registry, to be renamed"

	|  nameSym current newName |
	current := References keyAtValue: self ifAbsent: [^ self error: 'not found in References'].

	newName := UIManager default request: 'Please enter new name' initialAnswer: current.
	"Want to user some better way of determining the validity of the chosen identifier, and also want to give more precise diagnostic if the string the user types in is not acceptable.  Work to be done here."

	newName isEmpty ifTrue: [^ nil].
	((Scanner isLiteralSymbol: newName) and: [(newName includes: $:) not])
		ifTrue:
			[nameSym := newName capitalized asSymbol.
			(((References includesKey:  nameSym) not and:
				[(Smalltalk includesKey: nameSym) not]) and:
						[(ScriptingSystem allKnownClassVariableNames includes: nameSym) not])
					ifTrue:
						[(References associationAt: current) key: nameSym.
						References rehash.
						^ nameSym]].
	self inform: 'Sorry, that name is not available.'.
	^ nil