vectorization attribute calculation
traverseMessageRoot: aMessageNode in: obj firstPlayer: firstPlayer

	| inCondition |
	inCondition := #(ifTrue: ifFalse: ifTrue:ifFalse:) includes: aMessageNode selector key.

	root := aMessageNode.

	self traverseMessage: aMessageNode in: obj firstPlayer: firstPlayer inCondition: inCondition.
