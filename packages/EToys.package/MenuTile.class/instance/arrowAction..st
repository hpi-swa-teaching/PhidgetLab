arrows
arrowAction: delta
	| phrase aPlayer newItem |
	(phrase := self ownerThatIsA: PhraseTileMorph) ifNil: [^ self].
	aPlayer := phrase associatedPlayer.
	newItem := delta > 0
		ifTrue:
			[aPlayer menuItemAfter: literal]
		ifFalse:
			[aPlayer menuItemBefore: literal].
	self literal: newItem.
	self layoutChanged