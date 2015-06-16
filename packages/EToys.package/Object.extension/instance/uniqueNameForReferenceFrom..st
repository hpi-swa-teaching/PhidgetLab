*Etoys-viewer
uniqueNameForReferenceFrom: proposedName
	"Answer a satisfactory symbol, similar to the proposedName but obeying the rules, to represent the receiver"

	| aName stem |
	proposedName = self uniqueNameForReferenceOrNil 
		ifTrue: [^ proposedName].  "No change"

	stem := proposedName select: [:ch | ch isLetter or: [ch isDigit]].
	stem size = 0 ifTrue: [stem := 'A'].
	stem first isLetter ifFalse:
		[stem := 'A', stem].
	stem := stem capitalized.
	aName := Utilities keyLike: stem satisfying:
		[:jinaLake |
			| nameSym okay |
			nameSym := jinaLake asSymbol.
			okay := true.
			(self class bindingOf: nameSym) ifNotNil: [okay := false "don't use it"].
			okay].
	^ aName asSymbol