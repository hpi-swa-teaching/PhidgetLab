*Etoys-viewer
uniqueNameForReference
	"Answer a nice name by which the receiver can be referred to by other objects.  At present this uses a global References dictionary to hold the database of references, but in due course this will need to acquire some locality"

	| aName stem knownClassVars |
	(aName := self uniqueNameForReferenceOrNil) ifNotNil: [^ aName].
	(stem := self knownName) ifNil:
		[stem := self defaultNameStemForInstances asString].
	stem := stem select: [:ch | ch isLetter or: [ch isDigit]].
	stem size = 0 ifTrue: [stem := 'A'].
	stem first isLetter ifFalse:
		[stem := 'A', stem].
	stem := stem capitalized.
	knownClassVars := ScriptingSystem allKnownClassVariableNames.
	aName := Utilities keyLike:  stem satisfying:
		[:jinaLake |
			| nameSym |
			nameSym := jinaLake asSymbol.
			 ((References includesKey:  nameSym) not and:
				[(Smalltalk includesKey: nameSym) not]) and:
						[(knownClassVars includes: nameSym) not]].

	References at: (aName := aName asSymbol) put: self.
	^ aName